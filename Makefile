CC = gcc
CCRASP = aarch64-buildroot-linux-gnu-gcc 

CFLAGS = -I. 

DEPS = -pthread
DEPS2 = -pthread -lrt


RASPIP = 10.42.0.74
PORT = 5000


.PHONY: all
all:
	$(CCRASP) TPCServerRasp.c command.c -o TPCServerRasp.elf $(DEPS)
	$(CC) TPC_ClientPc.c command.c -o TPC_ClientPc.elf $(DEPS2)
	$(CC) sendmsg.c -o send.out.elf $(DEPS2)
	 

create_server: 
	$(CCRASP) TPCServerRasp.c command.c -o TPCServerRasp.elf $(DEPS) 
	
create_client:
	$(CC) TPC_ClientPc.c command.c -o TPC_ClientPc.elf $(DEPS2)

send_default_msg:
	./send.out send HI everyone!
	
create_sendout:
	gcc sendmsg.c -o send.out -lrt
	
connect_client:
	./TPC_ClientPc.elf $(RASPIP) $(PORT)
	



.PHONY: clean 
clean: 
	rm -f  TPCServerRasp.elf TPC_ClientPc.elf send.out.elf
	
clean_client:
	rm -f TPC_ClientPc.elf command.o
	
clean_server:
	rm -f TPCServerRasp.elf command.o
	
transfer_server: 
	scp TPCServerRasp.elf led.ko root@$(RASPIP):/etc
	
	
