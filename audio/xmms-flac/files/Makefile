# $OpenBSD: Makefile,v 1.1 2003/04/18 00:28:40 naddy Exp $

SUBDIRS= src/share src/plugin_common src/plugin_xmms

all install:
	@for d in ${SUBDIRS}; do \
		(cd $$d; ${MAKE} $@); \
	done
