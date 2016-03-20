# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:13 naddy Exp $

COMMENT =		perl interface to the arc4 random number generator

MODULES =		cpan
DISTNAME =		BSD-arc4random-1.50
REVISION =		3
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# MirOS Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
