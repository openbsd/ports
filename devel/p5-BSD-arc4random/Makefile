# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:40 sthen Exp $

COMMENT =	perl interface to the arc4 random number generator

DISTNAME =	BSD-arc4random-1.50
REVISION =	6

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MirOS Licence
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
