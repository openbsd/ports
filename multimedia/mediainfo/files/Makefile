# $OpenBSD: Makefile,v 1.2 2019/01/01 21:12:24 naddy Exp $

all install:
	@for d in ${SUBDIRS}; do \
		${MAKE} -C $$d $@ || exit; \
	done
