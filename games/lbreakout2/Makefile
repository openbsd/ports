# $OpenBSD: Makefile,v 1.15 2009/12/30 16:36:22 benoit Exp $

COMMENT =	breakout game with many levels, powerups, good graphics

DISTNAME =	lbreakout2-2.6
PKGNAME =	${DISTNAME}p0
CATEGORIES =	games x11

HOMEPAGE =	http://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	SDL c m pthread z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lgames/}

MODULES =	devel/gettext

LIB_DEPENDS =	SDL_mixer::devel/sdl-mixer \
		png.>=9.0::graphics/png
RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11 =	Yes
USE_GMAKE =	Yes
		
AUTOCONF_VERSION =	2.61
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS+ =	--with-docdir=${PREFIX}/share/doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv -lintl"

.include <bsd.port.mk>
