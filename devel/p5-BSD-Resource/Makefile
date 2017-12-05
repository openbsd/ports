# $OpenBSD: Makefile,v 1.41 2017/12/05 16:25:45 espie Exp $

COMMENT =	BSD process resource limit and priority functions

DISTNAME =	BSD-Resource-1.2911

CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS=Yes
MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0 or LGPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
