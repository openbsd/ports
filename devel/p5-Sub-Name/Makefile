# $OpenBSD: Makefile,v 1.16 2014/08/18 21:29:10 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.09

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
