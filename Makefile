CC=gcc

.PRECIOUS: %.o %.c
	$(CC) -fPIC -c $<

lib%.so: %.o
	$(CC) --shared -o $@ $<

main:
	$(MAKE) libs
	$(CC) -L. -lpoint -lputs $@.c -o $@

clean:
	rm -f *.o *.so

libs: libpoint.so libputs.so
