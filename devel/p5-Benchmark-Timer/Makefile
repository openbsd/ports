# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:13 naddy Exp $

COMMENT=	benchmarking with statistical confidence

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Benchmark-Timer-0.7107
CATEGORIES=	devel benchmarks

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	devel/p5-Module-Install

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
