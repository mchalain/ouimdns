modules-y+=mod_tinysvcmdns
slib-$(STATIC)+=mod_tinysvcmdns
mod_tinysvcmdns_SOURCES+=mod_tinysvcmdns.c
mod_tinysvcmdns_CFLAGS+=-DMODULES
mod_tinysvcmdns_CFLAGS+=-I$(srcdir)src
mod_tinysvcmdns_CFLAGS+=-I$(srcdir)lib
mod_tinysvcmdns_LDFLAGS+=-L$(srcdir)lib
mod_tinysvcmdns_LIBS+=tinysvcmdns

mod_tinysvcmdns_CFLAGS-$(DEBUG)+=-g -DDEBUG

