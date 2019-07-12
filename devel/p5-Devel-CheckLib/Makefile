# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:51 sthen Exp $

COMMENT =	module to check for C library availablity

MODULES =	cpan
DISTNAME =	Devel-CheckLib-1.13
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-IO-CaptureOutput>=1.0801 \
		devel/p5-Mock-Config>=0.02

PKG_ARCH =	*

.include <bsd.port.mk>
