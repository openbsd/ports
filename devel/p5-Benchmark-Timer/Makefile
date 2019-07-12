# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:45 sthen Exp $

COMMENT=	benchmarking with statistical confidence

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Benchmark-Timer-0.7107
CATEGORIES=	devel benchmarks

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	devel/p5-Module-Install

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
