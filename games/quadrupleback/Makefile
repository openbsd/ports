COMMENT=		clone of Doubleback, an intruder circling game

DISTNAME=		quadrupleback-0.2.0

CATEGORIES=		games

HOMEPAGE=		http://perso.b2b2c.ca/~sarrazip/dev/quadrupleback.html

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_gfx-1.0 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf X11 Xcursor Xext Xfixes Xi Xrandr Xrender
WANTLIB += Xss avif c flatzebra-0.2 iconv jxl m ogg opus opusfile
WANTLIB += samplerate sharpyuv sndio tiff usbhid webp webpdemux
WANTLIB += xcb

COMPILER=		base-clang ports-gcc base-gcc

SITES=			http://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS=		converters/libiconv \
			devel/flatzebra>=0.2.0

RUN_DEPENDS=		devel/desktop-file-utils

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/quadrupleback

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
