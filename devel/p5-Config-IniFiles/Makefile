# $OpenBSD: Makefile,v 1.23 2012/05/06 17:51:09 jasper Exp $

COMMENT =	module for reading .ini-style configuration files

MODULES =	cpan
DISTNAME =	Config-IniFiles-2.71
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =		SHLOMIF

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-List-MoreUtils
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
