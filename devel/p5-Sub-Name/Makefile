# $OpenBSD: Makefile,v 1.22 2016/10/04 22:38:02 bluhm Exp $

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.21

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
