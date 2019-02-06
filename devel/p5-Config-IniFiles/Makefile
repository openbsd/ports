# $OpenBSD: Makefile,v 1.39 2019/02/06 19:03:12 jasper Exp $

COMMENT =	module for reading .ini-style configuration files

DISTNAME =	Config-IniFiles-3.000001
CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-IO-stringy

.include <bsd.port.mk>
