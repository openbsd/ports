# $OpenBSD: Makefile,v 1.13 2016/08/11 11:28:41 jasper Exp $

V =		1.5.0
COMMENT =	open-source Zelda-like 2D game engine
DISTNAME =	solarus-${V}-src
PKGNAME =	solarus-${V}

SHARED_LIBS +=	solarus                   0.0 # 1.5

HOMEPAGE =	http://www.solarus-games.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += Qt5Core Qt5Gui Qt5Widgets SDL2 SDL2_image SDL2_ttf
WANTLIB += c luajit-5.1 m modplug ogg openal physfs pthread vorbis
WANTLIB += vorbisfile

MASTER_SITES =	http://www.solarus-games.org/downloads/solarus/

MODULES +=	devel/cmake \
		lang/lua \
		x11/qt5 \
		gcc4

MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS =	audio/libmodplug \
		audio/libvorbis \
		audio/openal \
		devel/physfs \
		devel/sdl2-image \
		devel/sdl2-ttf \
		lang/luajit

WRKDIST =	${WRKDIR}/solarus-${V}

.include <bsd.port.mk>
