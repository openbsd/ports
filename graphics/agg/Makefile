COMMENT=	anti-grain geometry graphics library

DISTNAME=	agg-2.5
REVISION=	9
SHARED_LIBS=	agg		3.0 \
		aggfontfreetype	3.0 \
		aggplatformsdl	3.0 \
		aggplatformX11	3.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.antigrain.com/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 freetype iconv m sndio usbhid xcb z SDL>=6 ${COMPILER_LIBCXX} pthread

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${HOMEPAGE}

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9

LIB_DEPENDS=	converters/libiconv \
		devel/sdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=autoreconf
AUTORECONF=	sh autogen.sh

CONFIGURE_ARGS=	--disable-gpc \
		--disable-examples \
		--disable-sdltest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
