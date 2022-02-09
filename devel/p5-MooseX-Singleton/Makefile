# $OpenBSD: Makefile,v 1.1.1.1 2022/02/09 08:39:40 sthen Exp $

COMMENT =	turn your Moose class into a singleton

DISTNAME =	MooseX-Singleton-0.30

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Moose>=1.10
TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Warnings

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
