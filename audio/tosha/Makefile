# $OpenBSD: Makefile,v 1.7 2000/02/11 01:09:59 espie Exp $

DISTNAME=	tosha-0.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.tu-clausthal.de/pub/unix/audio/

MAINTAINER=	angelos@openbsd.org

post-install:
	@if [ -e /etc/tosharc ] ; then \
		echo "===> You might wish to update /etc/tosharc"; \
		echo "===> check ${PREFIX}/lib/tosha/tosharc.sample"; \
	else \
		cp ${PREFIX}/lib/tosha/tosharc.sample /etc/tosharc; \
	fi

.include <bsd.port.mk>
