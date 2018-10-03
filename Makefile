#!/usr/bin/make -f
#
all:

mod_statd.so:
	apxs2 -a -c -Wl,-Wall -Wl,-lm -I. mod_statsd.c

deb: mod_statd.so
	debuild -uc -us -i -b

