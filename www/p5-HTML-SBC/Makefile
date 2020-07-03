# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:01 sthen Exp $

COMMENT =	simple blog code for valid (X)HTML

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTML-SBC-0.15
REVISION =	2
CATEGORIES =	www

# Perl
PERMIT_PACKAGE =		Yes

# actually TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
