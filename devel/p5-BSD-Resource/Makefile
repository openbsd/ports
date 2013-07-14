# $OpenBSD: Makefile,v 1.32 2013/07/14 22:59:59 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		BSD process resource limit and priority functions

DISTNAME =		BSD-Resource-1.2907

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0 or LGPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
