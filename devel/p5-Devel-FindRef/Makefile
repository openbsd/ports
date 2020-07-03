# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:49 sthen Exp $

COMMENT =	tracking back references

MODULES =	cpan
DISTNAME =	Devel-FindRef-1.46
# avoid going backwards, give it a 3rd digit
PKGNAME =	p5-Devel-FindRef-1.460
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>
REVISION =	1

BUILD_DEPENDS =	devel/p5-Canary-Stability
RUN_DEPENDS =	devel/p5-common-sense

# perl
PERMIT_PACKAGE =Yes

WANTLIB += c perl

.include <bsd.port.mk>
