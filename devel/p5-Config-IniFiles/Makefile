# $OpenBSD: Makefile,v 1.41 2019/07/12 20:44:48 sthen Exp $

COMMENT =	module for reading .ini-style configuration files

DISTNAME =	Config-IniFiles-3.000002
CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-IO-stringy

.include <bsd.port.mk>
