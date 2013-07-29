CC=gcc
CXX=g++
RANLIB=ranlib

PROGRAMS=usbdump

.PHONY: default
default: $(PROGRAMS)

OBJECTS_USBDUMP:= usbdump.o

$(PROGRAMS): $(OBJECTS_USBDUMP)
	$(CC) $(CFLAGS) $? -o $@ 

%.o:%.c 
	$(CC) $(CFLAGS) -c $? -o $@ 

clean:
	-rm -rf *~ *.o $(PROGRAMS)
