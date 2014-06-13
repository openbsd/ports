# $OpenBSD: Makefile,v 1.1.1.1 2014/06/13 20:48:58 naddy Exp $

all install:
	@for d in ${SUBDIRS}; do \
		(cd $$d; ${MAKE} $@) || exit; \
	done
