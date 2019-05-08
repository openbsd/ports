# $OpenBSD: Makefile,v 1.40 2019/05/08 16:27:28 jasper Exp $

COMMENT =	module for reading .ini-style configuration files

DISTNAME =	Config-IniFiles-3.000002
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
