#
# $OpenBSD: Makefile,v 1.7 2002/07/04 15:37:03 reinhard Exp $
#
#   Makefile wrapper for nessus
#
#   Original by dug song <dugsong@monkey.org>
#   Enhanced by Matt Behrens <matt@openbsd.org>
#

all:
	@for dir in @@NESSUS_DIRS@@ ; do \
	   echo ">> Building $$dir" ; \
	   (cd $$dir ; make $@) ; \
	done

install:
	@for dir in @@NESSUS_DIRS@@ ; do \
	   echo ">> Installing $$dir" ; \
	   (cd $$dir ; \
	    make prefix=${PREFIX} \
		localstatedir=${DESTDIR}/var \
		sysconfdir=${PREFIX}/share/examples \
		sharedstatedir=${DESTDIR}/var \
		$@) ; \
	done

