all: config.mk
	$(MAKE) -C include
	$(MAKE) -C lib

config:
	rm -f config.mk
	$(MAKE) config.mk

config.mk:
	$(MAKE) -f Makefile.config

clean:
	$(MAKE) -C version clean
	$(MAKE) -C lib clean
	$(MAKE) -C include clean
	rm -f config.mk

install: config.mk
	$(MAKE) -C lib install
	$(MAKE) -C include install
