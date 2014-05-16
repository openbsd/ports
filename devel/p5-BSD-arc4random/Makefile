# $OpenBSD: Makefile,v 1.5 2014/05/16 23:08:31 bluhm Exp $

COMMENT =		perl interface to the arc4 random number generator

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		BSD-arc4random-1.50
REVISION =		1
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# MirOS Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
