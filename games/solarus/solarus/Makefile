# $OpenBSD: Makefile,v 1.12 2016/03/18 23:12:17 naddy Exp $

V =		1.4.5
COMMENT =	open-source Zelda-like 2D game engine
DISTNAME =	solarus-${V}-src
PKGNAME =	solarus-${V}

HOMEPAGE =	http://www.solarus-games.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL2 SDL2_image SDL2_ttf c luajit-5.1 m modplug ogg
WANTLIB += openal physfs pthread vorbisfile

MASTER_SITES =	http://www.solarus-games.org/downloads/solarus/

MODULES +=	devel/cmake \
		lang/lua \
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
