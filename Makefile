all: ioctl.o

ioctl.o: ioctl.c
	$(CC) $(CFLAGS) ioctl.c -o ioctl

clean:
	rm -f *.o ioctl

install: all
	cp ioctl $(DESTDIR)/bin/ioctl

uninstall:
	rm -f $(DESTDIR)/bin/ioctl
