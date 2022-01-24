#
# Makefile for tinysvcmdns
#

CFLAGS += -Wall -pedantic -std=gnu99
#CFLAGS += -g
CFLAGS += -O2 -DNDEBUG
LDLIBS = -lpthread

ifneq ($(CROSS_COMPILE),)
  CC = gcc
  CC := $(CROSS_COMPILE)$(CC)
  AR := $(CROSS_COMPILE)$(AR)
endif

BIN=tinysvcmdns

LIBTINYSVCMDNS_OBJS = mdns.o mdnsd.o

.PHONY: all clean

all: $(BIN) libtinysvcmdns.a

clean:
	-$(RM) *.o
	-$(RM) $(BIN)
	-$(RM) libtinysvcmdns.a

$(BIN): tinysvcmdns.o libtinysvcmdns.a

libtinysvcmdns.a: $(patsubst %, libtinysvcmdns.a(%), $(LIBTINYSVCMDNS_OBJS))

