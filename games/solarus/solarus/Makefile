# $OpenBSD: Makefile,v 1.8 2015/09/20 14:04:45 jasper Exp $

PORTROACH=	limit:^1\.1
PORTROACH_COMMENT=	solarus >= 1.2.0 requires SDL2

V =		1.1.1
COMMENT =	open-source Zelda-like 2D game engine
DISTNAME =	solarus-${V}-src
PKGNAME =	solarus-${V}
REVISION =	1

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
