# $OpenBSD: Makefile,v 1.27 2015/04/14 06:57:56 jasper Exp $

COMMENT =	module for reading .ini-style configuration files

MODULES =	cpan
DISTNAME =	Config-IniFiles-2.85
CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-List-MoreUtils
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
