# $OpenBSD: Makefile,v 1.18 2010/10/24 21:19:02 ajacoutot Exp $

COMMENT =	breakout game with many levels, powerups, good graphics

DISTNAME =	lbreakout2-2.6.2
REVISION =	0
CATEGORIES =	games x11

HOMEPAGE =	http://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	SDL c m pthread z png.>=9.0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lgames/}

MODULES =	devel/gettext

LIB_DEPENDS =	SDL_mixer::devel/sdl-mixer \
		::graphics/png
RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--localstatedir=/var/games \
			--with-docdir=${PREFIX}/share/doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lintl -liconv"

.include <bsd.port.mk>
