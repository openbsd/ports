# $OpenBSD: Makefile,v 1.14 2013/10/16 16:25:32 bluhm Exp $

COMMENT =		perl module to generate random data

DISTNAME =		Data-Random-0.09

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-YAML-Tiny
TEST_DEPENDS =		devel/p5-Date-Calc \
			graphics/p5-GD

.include <bsd.port.mk>
