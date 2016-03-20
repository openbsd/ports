# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:22 naddy Exp $

COMMENT	= 	configure-time utilities for using C headers, etc.

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	ExtUtils-CChecker-0.10
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE	 =	modinst

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
