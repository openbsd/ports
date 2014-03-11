# $OpenBSD: Makefile,v 1.7 2014/03/11 18:03:29 pascal Exp $

COMMENT =		downhill racing game

V =			0.6.0
DISTNAME =		etr-$V
PKGNAME =		extremetuxracer-$V

CATEGORIES =		games

HOMEPAGE =		http://sourceforge.net/projects/extremetuxracer/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL SDL_image SDL_mixer c freetype m pthread
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=extremetuxracer/}
EXTRACT_SUFX =		.tar.xz

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-image

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
