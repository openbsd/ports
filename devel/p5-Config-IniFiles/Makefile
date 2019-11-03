# $OpenBSD: Makefile,v 1.42 2019/11/03 14:07:41 jasper Exp $

COMMENT =	module for reading .ini-style configuration files

DISTNAME =	Config-IniFiles-3.000002
CATEGORIES =	devel
REVISION=	0

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-IO-stringy

.include <bsd.port.mk>
