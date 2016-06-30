all: ioctl

ioctl:
	$(CC) $(CFLAGS) ioctl.c -o $@

clean:
	rm -f *.o ioctl

install: all
	cp ioctl $(DESTDIR)/bin/ioctl

uninstall:
	rm -f $(DESTDIR)/bin/ioctl	
