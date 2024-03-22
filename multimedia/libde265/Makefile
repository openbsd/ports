COMMENT-main=	open H.265 video codec implementation
COMMENT-tools=	tools for libde265 open H.265 video codec

V=		1.0.15
DISTNAME=	libde265-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-tools=	libde265-tools-$V

SHARED_LIBS +=  de265                     2.0 # 0.12

CATEGORIES=	multimedia

HOMEPAGE=	https://www.libde265.org/

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

WANTLIB-tools += ${WANTLIB}
WANTLIB-tools += GL Qt5Core Qt5Gui Qt5Widgets SDL2 X11 X11-xcb Xau Xcursor
WANTLIB-tools += Xdmcp Xext Xfixes Xi Xrandr Xrender Xss Xxf86vm avutil
WANTLIB-tools += c de265 double-conversion drm execinfo expat freetype
WANTLIB-tools += glapi glib-2.0 graphite2 gthread-2.0 harfbuzz iconv
WANTLIB-tools += icudata icui18n icuuc intl pcre2-16 pcre2-8 png samplerate
WANTLIB-tools += sndio swscale usbhid xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB-tools += xcb-present xcb-randr xcb-shm xcb-sync xcb-xfixes xshmfence
WANTLIB-tools += z zstd

MULTI_PACKAGES=	-main -tools

SITES=		https://github.com/strukturag/libde265/releases/download/v$V/

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

LIB_DEPENDS-main= ${LIB_DEPENDS}

LIB_DEPENDS-tools= ${LIB_DEPENDS} \
		multimedia/libde265,-main \
		devel/sdl2 \
		graphics/ffmpeg \
		x11/qt5/qtbase

.include <bsd.port.mk>
