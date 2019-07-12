# $OpenBSD: Makefile,v 1.24 2019/07/12 20:45:07 sthen Exp $

COMMENT =		(re)name a sub

DISTNAME =		Sub-Name-0.21

CATEGORIES =		devel
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Devel-CheckBin

.include <bsd.port.mk>
