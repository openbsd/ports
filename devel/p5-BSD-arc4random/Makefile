# $OpenBSD: Makefile,v 1.7 2015/03/20 22:47:40 naddy Exp $

COMMENT =		perl interface to the arc4 random number generator

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		BSD-arc4random-1.50
REVISION =		3
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# MirOS Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
