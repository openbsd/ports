# $OpenBSD: Makefile,v 1.1.1.1 2013/01/25 19:02:13 bentley Exp $

COMMENT-main=	n64 emulator (default plugins)
COMMENT-extra=	n64 emulator (all plugins)

V=		1.99.5
PKGNAME=	mupen64plus-${V}

PKGNAME-main=	mupen64plus-${V}
PKGNAME-extra=	mupen64plus-extra-${V}

HOMEPAGE=	https://code.google.com/p/mupen64plus/

MAINTAINER=	Anthony J. Bentley <anthony@cathet.us>

MULTI_PACKAGES=	-main -extra

# sync with mupen64plus-core version
RUN_DEPENDS-main +=	emulators/mupen64plus/core=${V}

# default plugins
RUN_DEPENDS-main +=	\
		emulators/mupen64plus/audio-sdl \
		emulators/mupen64plus/input-sdl \
		emulators/mupen64plus/rsp-hle \
		emulators/mupen64plus/ui-console \
		emulators/mupen64plus/video-rice

# extra plugins
RUN_DEPENDS-extra +=	\
		STEM-=${V}:${BASE_PKGPATH},-main \
		emulators/mupen64plus/rsp-z64 \
		emulators/mupen64plus/video-arachnoid \
		emulators/mupen64plus/video-glide64 \
		emulators/mupen64plus/video-z64

.include <bsd.port.mk>
