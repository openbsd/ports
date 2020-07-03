# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:40 sthen Exp $

COMMENT=	benchmarking with statistical confidence

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Benchmark-Timer-0.7112
CATEGORIES=	devel benchmarks
REVISION=	0

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	devel/p5-Module-Install

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
