#
# $OpenBSD: Makefile,v 1.8 2003/11/27 19:53:24 sturm Exp $
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
	    make prefix=${TRUEPREFIX} \
		localstatedir=${DESTDIR}/var \
		sysconfdir=${PREFIX}/share/examples \
		sharedstatedir=${DESTDIR}/var \
		$@) ; \
	done

