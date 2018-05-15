# $OpenBSD: Makefile,v 1.11 2018/05/15 11:21:21 espie Exp $

COMMENT =	perl interface to the arc4 random number generator

DISTNAME =	BSD-arc4random-1.50
REVISION =	5

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MirOS Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

MODULES =		cpan

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
