# $OpenBSD: Makefile,v 1.8 2019/07/12 20:44:53 sthen Exp $

COMMENT	= 	configure-time utilities for using C headers, etc.

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	ExtUtils-CChecker-0.10
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE	 =	modinst

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
