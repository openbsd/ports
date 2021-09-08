# $OpenBSD: Makefile,v 1.7 2021/09/08 19:45:45 bluhm Exp $

COMMENT =		check whether Perl files compile correctly

DISTNAME =		Test-Compile-v3.0.1
PKGNAME =		p5-${DISTNAME:S/v//g}

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Warnings

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
