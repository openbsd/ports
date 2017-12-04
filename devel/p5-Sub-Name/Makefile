# $OpenBSD: Makefile,v 1.23 2017/12/04 21:09:39 espie Exp $

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.21

CATEGORIES =		devel
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
