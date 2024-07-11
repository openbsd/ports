COMMENT=	generic game engine library

VERSION=	0.2.0
DISTNAME=	flatzebra-${VERSION}

SHARED_LIBS +=	flatzebra-0.2             0.0 # 2.0

CATEGORIES=	devel games

HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/afternoonstalker.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_gfx-1.0 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf X11 Xcursor Xext Xfixes Xi Xrandr Xrender
WANTLIB += Xss avif iconv jxl m ogg opus opusfile samplerate sharpyuv
WANTLIB += sndio tiff usbhid webp webpdemux xcb

COMPILER=	base-clang ports-gcc base-gcc

SITES=		http://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS=	converters/libiconv \
		devel/sdl2-gfx \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
