# $OpenBSD: Makefile,v 1.1.1.1 2020/02/24 23:22:56 sthen Exp $

COMMENT=	open H.265 video codec implementation

V=		1.0.5
DISTNAME=	libde265-$V

SHARED_LIBS +=  de265                     0.0 # 0.12

CATEGORIES=	multimedia

HOMEPAGE=	https://www.libde265.org/

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets SDL
WANTLIB += X11 X11-xcb Xdamage Xext Xfixes Xxf86vm avutil c double-conversion
WANTLIB += drm execinfo expat freetype glapi glib-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz iconv icudata icui18n icuuc intl
WANTLIB += m pcre pcre2-16 png sndio swscale usbhid xcb xcb-dri2
WANTLIB += xcb-dri3 xcb-glx xcb-present xcb-sync xcb-xfixes xshmfence
WANTLIB += z

MASTER_SITES=	https://github.com/strukturag/libde265/releases/download/v$V/

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

LIB_DEPENDS=	devel/sdl \
		graphics/ffmpeg \
		x11/qt5/qtbase

.include <bsd.port.mk>
