# $OpenBSD: Makefile,v 1.9 2019/05/26 12:58:01 sthen Exp $

COMMENT =	tracking back references

MODULES =	cpan
DISTNAME =	Devel-FindRef-1.46
# avoid going backwards, give it a 3rd digit
PKGNAME =	Devel-FindRef-1.460
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>

BUILD_DEPENDS =	devel/p5-Canary-Stability
RUN_DEPENDS =	devel/p5-common-sense

# perl
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += c perl

.include <bsd.port.mk>
