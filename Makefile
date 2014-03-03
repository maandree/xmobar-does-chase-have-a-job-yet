PREFIX ?= /usr/local
BIN ?= /bin
DATA ?= /share
BINDIR ?= $(PREFIX)$(BIN)
DATADIR ?= $(PREFIX)$(DATA)
LICENSEDIR ?= $(DATADIR)/licenses

COMMAND ?= does-chase-have-a-job-yet
PKGNAME ?= xmobar-does-chase-have-a-job-yet


.PHONY: all
all:
	@true


.PHONY: install
install:
	install -Dm755 does-chase-have-a-job-yet -- "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	install -Dm644 COPYING -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)/COPYING"


.PHONY: uninstall
uninstall:
	-rm -- "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	-rm -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)/COPYING"
	-rmdir -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)"


.PHONY: clean
clean:
	@true

