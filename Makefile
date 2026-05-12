PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install age.sh

install:
	@install -Dm755 age.sh $(DESTDIR)$(PREFIX)/bin/age

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/age
