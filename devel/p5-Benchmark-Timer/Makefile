# $OpenBSD: Makefile,v 1.13 2019/08/03 09:40:45 giovanni Exp $

COMMENT=	benchmarking with statistical confidence

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Benchmark-Timer-0.7112
CATEGORIES=	devel benchmarks

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	devel/p5-Module-Install

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
