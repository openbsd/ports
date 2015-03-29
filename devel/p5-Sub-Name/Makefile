# $OpenBSD: Makefile,v 1.18 2015/03/29 12:24:17 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.13

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
