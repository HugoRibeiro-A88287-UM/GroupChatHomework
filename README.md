
# Raspberry Group Chat

This project is a simple group chat which use Raspberry PI 4 as a server and 
the Pc as a client/clients.




## Download Project

For ssh connection:
```bash
    git clone git@github.com:HugoRibeiro-A88287-UM/GroupChatHomework.git
```

For https connection:
```bash
    git clone https://github.com/HugoRibeiro-A88287-UM/GroupChatHomework.git
```

Go to the project directory:

```bash
    cd GroupChatHomework
```
## Installation

To install this project follow the next steps:


* Open the Makefile and check if CC = aarch64-buildroot-linux-gnu-gcc is uncomment;

* Comment the CC = gcc line;

* Open the terminal in the folder directory;

* Type make clean to clean all the executables and .o files;

* Type make create_server to create the server executable;

* Commment the CC = aarch64-buildroot-linux-gnu-gcc line and uncomment CC = gcc line;

* Type make create_client to create the client;

* Type make create_sendout to create the send program;



NOTE: 
    This tutorial is to use raspberry pi 4 as a server. If you don't it, please don't
	do the first two steps. Instead, comment the CC = aarch64-buildroot-linux-gnu-gcc
	and let the CC = gcc line always uncomment.
	Also, don't do step 6. 


## Run 

To run the project, please first connect your raspberry to the computer with
a ssh connection. It's also possible to use UART connection. 
That option won't be approached here.

* Go to your local project folder

* Type make transfer_server to send the executable to the raspberry;

* Start executing the server on raspberry with the port number.
    Use the command: ./TPCServerRasp.elf <PORT> 

* Type make connect_client to connect the client to the server

* Start communicate with your friends :)


To send messages there are two way:

Type:


        make send_default_msg to send a default message to all clients
    
OR

        ./send.out <command> <message> to send specific messages




## Command list

The available command list is:

* send 

        To send a message for all the clients

* name

        Change the name on the group chat

* help

        Show all the available commands

* kill

        Disconnect the group chat
## Authors

- [@HugoRibeiro](https://github.com/HugoRibeiro-A88287-UM/)


