# $OpenBSD: Makefile,v 1.9 2020/07/03 21:44:51 sthen Exp $

COMMENT	= 	configure-time utilities for using C headers, etc.

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	ExtUtils-CChecker-0.10
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE	 =	modinst

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
