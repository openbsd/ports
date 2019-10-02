# $OpenBSD: Makefile,v 1.27 2019/10/02 17:50:39 jasper Exp $

V =		1.6.0
COMMENT =	open-source Zelda-like 2D game engine
DISTNAME =	solarus-${V}-src
PKGNAME =	solarus-${V}
REVISION =	0

SHARED_LIBS +=	solarus                   0.0 # 1.5

HOMEPAGE =	https://www.solarus-games.org/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += Qt5Core Qt5Gui Qt5Widgets SDL2 SDL2_image SDL2_ttf
WANTLIB += c luajit-5.1 m modplug ogg openal physfs pthread vorbis
WANTLIB += vorbisfile GL GLU ${COMPILER_LIBCXX}

MASTER_SITES =	https://www.solarus-games.org/downloads/solarus/

MODULES +=	devel/cmake \
		lang/lua \
		x11/qt5

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/libmodplug \
		audio/libvorbis \
		audio/openal \
		devel/physfs \
		devel/sdl2-image \
		devel/sdl2-ttf \
		lang/luajit
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

WRKDIST =	${WRKDIR}/solarus-${V}

.include <bsd.port.mk>
