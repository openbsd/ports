# $OpenBSD: Makefile,v 1.19 2015/04/27 17:05:05 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.14

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
