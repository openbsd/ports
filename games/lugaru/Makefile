# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:20 sthen Exp $

COMMENT =	third-person rabbit combat action game

DISTNAME =	lugaru-1.2
REVISION =	1

CATEGORIES =	games

HOMEPAGE =	https://osslugaru.gitlab.io/

MAINTAINER = 	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU SDL2 c jpeg m ogg openal png pthread vorbisfile
WANTLIB += z ${COMPILER_LIBCXX}

MASTER_SITES =		https://bitbucket.org/osslugaru/lugaru/downloads/

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

COMPILER =		base-clang ports-clang
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
