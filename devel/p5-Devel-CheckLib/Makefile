# $OpenBSD: Makefile,v 1.6 2020/07/03 21:44:49 sthen Exp $

COMMENT =	module to check for C library availablity

MODULES =	cpan
DISTNAME =	Devel-CheckLib-1.13
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-IO-CaptureOutput>=1.0801 \
		devel/p5-Mock-Config>=0.02

PKG_ARCH =	*

.include <bsd.port.mk>
