CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

mcom: $(OBJS)
	$(CC) -o mcom $(OBJS) $(LDFLAGS)  

$(OBJS): mcom.h

debug: mcom
	./test.sh debug

test: mcom
	./test.sh

clean:
	rm -f mcom *.o *~ tmp*

.PHONY: test clean debug