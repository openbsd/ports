# $OpenBSD: Makefile,v 1.8 2019/05/24 08:46:08 espie Exp $

COMMENT =	tracking back references

MODULES =	cpan
DISTNAME =	Devel-FindRef-1.46
# avoid going backwards, give it a 3rd digit
PKGNAME =	Devel-FindRef-1.460
CATEGORIES =	devel
MAINTAINER =	Marc Espie <espie@openbsd.org>

RUN_DEPENDS =	devel/p5-common-sense

# perl
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += c perl

.include <bsd.port.mk>
