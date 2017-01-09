# $OpenBSD: Makefile,v 1.1.1.1 2017/01/09 05:37:28 bentley Exp $

COMMENT =	third-person rabbit combat action game

DISTNAME =	lugaru-1.1

CATEGORIES =	games

HOMEPAGE =	https://osslugaru.gitlab.io/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL2 c jpeg m ogg openal png pthread vorbisfile
WANTLIB += z

MASTER_SITES =		https://bitbucket.org/osslugaru/lugaru/downloads/

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			gcc4
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/sdl2 \
			graphics/jpeg \
			graphics/png

CONFIGURE_ARGS =	-DSYSTEM_INSTALL=Yes

NO_TEST =		Yes

.include <bsd.port.mk>
