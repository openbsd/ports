# $OpenBSD: Makefile,v 1.6 1999/09/26 21:09:50 espie Exp $

DISTNAME=	tosha-0.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.tu-clausthal.de/pub/unix/audio/

MAINTAINER=	angelos@openbsd.org

post-install:
	@if [ -e /etc/tosharc ] ; then \
		${ECHO} "===> You might wish to update /etc/tosharc"; \
		${ECHO} "===> check ${PREFIX}/lib/tosha/tosharc.sample"; \
	else \
		cp ${PREFIX}/lib/tosha/tosharc.sample /etc/tosharc; \
	fi

.include <bsd.port.mk>
