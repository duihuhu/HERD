CFLAGS  := -O3 -Wall -Wno-unused-result -fgnu89-inline -g
LD      := gcc
LDFLAGS := ${LDFLAGS} -lrdmacm -libverbs -lrt -lpthread

main: common.o conn.o main.o
	${LD} -o $@ $^ ${LDFLAGS} 

PHONY: clean
clean:
	rm -f *.o main
