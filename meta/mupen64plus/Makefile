COMMENT-main=	n64 emulator (default plugins)
COMMENT-extra=	n64 emulator (all plugins)

V=		2.5.9
PKGNAME=	mupen64plus-$V

PKGNAME-main=	mupen64plus-$V
PKGNAME-extra=	mupen64plus-extra-$V

HOMEPAGE=	https://mupen64plus.org/

MAINTAINER=	Anthony J. Bentley <anthony@anjbe.name>

MULTI_PACKAGES=	-main -extra

# sync with mupen64plus-core version
RUN_DEPENDS-main +=	emulators/mupen64plus/core=$V

# default plugins
RUN_DEPENDS-main +=	\
		emulators/mupen64plus/audio-sdl>=$V \
		emulators/mupen64plus/input-sdl>=$V \
		emulators/mupen64plus/rsp-hle>=$V \
		emulators/mupen64plus/ui-console>=$V \
		emulators/mupen64plus/video-glide64mk2>=$V \
		emulators/mupen64plus/video-rice>=$V

# extra plugins
RUN_DEPENDS-extra +=	\
		STEM-=${V}:${BASE_PKGPATH},-main \
		emulators/mupen64plus/rsp-cxd4 \
		emulators/mupen64plus/rsp-z64 \
		emulators/mupen64plus/video-arachnoid \
		emulators/mupen64plus/video-glide64 \
		emulators/mupen64plus/video-z64

.include <bsd.port.mk>
