# $OpenBSD: Makefile,v 1.4 2013/10/18 17:10:06 bcallah Exp $

V =		1.1.0
COMMENT =	open-source Zelda-like 2D game engine
DISTNAME =	solarus-${V}-src
PKGNAME =	solarus-${V}

HOMEPAGE =	http://www.solarus-games.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL SDL_image SDL_ttf c m modplug ogg openal physfs
WANTLIB += pthread stdc++ vorbisfile ${MODLUA_WANTLIB}

MASTER_SITES =	http://www.solarus-games.org/downloads/solarus/

MODULES +=	devel/cmake \
		lang/lua

LIB_DEPENDS =	audio/libmodplug \
		audio/libvorbis \
		audio/openal \
		devel/physfs \
		devel/sdl-image \
		devel/sdl-ttf

WRKDIST =	${WRKDIR}/solarus-${V}

.include <bsd.port.mk>
