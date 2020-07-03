# $OpenBSD: Makefile,v 1.43 2020/07/03 21:44:40 sthen Exp $

COMMENT =	BSD process resource limit and priority functions

DISTNAME =	BSD-Resource-1.2911
REVISION =	0

CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS=Yes
MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0 or LGPL 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
