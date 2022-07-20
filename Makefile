CFLAGS  := -O3 -Wall -Werror -Wno-unused-result -fgnu89-inline
LD      := gcc
LDFLAGS := ${LDFLAGS} -lrdmacm -libverbs -lrt -lpthread
EXTRA_CFLAGS := -w -Wno-address-of-packed-member

main: common.o conn.o main.o
	${LD} -o $@ $^ ${LDFLAGS} 

PHONY: clean
clean:
	rm -f *.o main
