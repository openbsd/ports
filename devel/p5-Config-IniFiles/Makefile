# $OpenBSD: Makefile,v 1.24 2013/03/11 10:50:14 espie Exp $

COMMENT =	module for reading .ini-style configuration files

MODULES =	cpan
DISTNAME =	Config-IniFiles-2.71
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-List-MoreUtils
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
