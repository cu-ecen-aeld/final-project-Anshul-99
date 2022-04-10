# Author: Anshul Somani
# Makefile to crosscompile the executable for server.c
	

ifeq ($(CC),)
	CC=$(CROSS_COMPILE)gcc	
endif
ifeq ($(CFLAGS),)
	CFLAGS=-Werror -Wall -g  	
endif
ifeq ($(LDFLAGS),)
	LDFLAGS=-pthread	
endif


all: server

default: server

server: server.c
	$(CC) $(CFLAGS) server.c -o server $(LDFLAGS) 
	
.PHONY: clean	

clean: 
	 rm -f server server.o 
	


