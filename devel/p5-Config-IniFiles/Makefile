# $OpenBSD: Makefile,v 1.43 2020/03/27 17:10:00 sthen Exp $

COMMENT =	module for reading .ini-style configuration files

DISTNAME =	Config-IniFiles-3.000003
CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-IO-stringy

.include <bsd.port.mk>
