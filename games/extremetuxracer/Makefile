# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:23 pascal Exp $

COMMENT =		downhill racing game
BROKEN-alpha =		cc1plus: error: unrecognized command line option '-std=c++11'
BROKEN-hppa =		cc1plus: error: unrecognized command line option '-std=c++11'

V =			0.6.0
DISTNAME =		etr-$V
PKGNAME =		extremetuxracer-$V
REVISION =		0

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
