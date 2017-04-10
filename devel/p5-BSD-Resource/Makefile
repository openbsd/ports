# $OpenBSD: Makefile,v 1.40 2017/04/10 12:56:26 bluhm Exp $

COMMENT =	BSD process resource limit and priority functions

DISTNAME =	BSD-Resource-1.2911

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0 or LGPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
