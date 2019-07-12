# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:56 sthen Exp $

COMMENT =	Getopt::Long, but simpler and more powerful

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Getopt-Long-Descriptive-0.103
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Params-Validate>=0.97 \
		devel/p5-Sub-Exporter

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-Test-Fatal \
		devel/p5-Test-Warnings>=0.005

.include <bsd.port.mk>
