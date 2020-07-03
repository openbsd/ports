# $OpenBSD: Makefile,v 1.2 2020/07/03 21:44:44 sthen Exp $

COMMENT =	perl extension for libconfig

DISTNAME =	Conf-Libconfig-0.100
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c config perl

MODULES =	cpan
CPAN_AUTHOR =	CNANGEL

BUILD_DEPENDS =	devel/p5-ExtUtils-PkgConfig \
		devel/p5-Test-Deep>=0.1 \
		devel/p5-Test-Exception>=0.25 \
		devel/p5-Test-Warn>=0.10
TEST_DEPENDS =	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-Spelling
LIB_DEPENDS =	devel/libconfig

.include <bsd.port.mk>
