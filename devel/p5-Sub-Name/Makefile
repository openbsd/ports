# $OpenBSD: Makefile,v 1.17 2014/09/07 20:08:09 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.12

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
