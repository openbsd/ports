# $OpenBSD: Makefile,v 1.20 2016/03/16 18:54:04 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.15

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
