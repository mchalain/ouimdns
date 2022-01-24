hook-build-y+=tinysvcmdns_lib
hook-clean-y+=tinysvcmdns_clean
.PHONY=tinysvcmdns_all
tinysvcmdns_lib:
	make -C lib EXTRA_CFLAGS=-fPIC libtinysvcmdns.a
tinysvcmdns_clean:
	make -C lib clean
