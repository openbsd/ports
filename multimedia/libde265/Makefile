# $OpenBSD: Makefile,v 1.5 2020/03/15 19:57:21 rsadowski Exp $

COMMENT-main=	open H.265 video codec implementation
COMMENT-tools=	tools for libde265 open H.265 video codec

V=		1.0.5
DISTNAME=	libde265-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-tools=	libde265-tools-$V
REVISION=	1
REVISION-tools=	3

SHARED_LIBS +=  de265                     0.0 # 0.12

CATEGORIES=	multimedia

HOMEPAGE=	https://www.libde265.org/

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

WANTLIB-tools += ${WANTLIB}
WANTLIB-tools += GL Qt5Core Qt5Gui Qt5Widgets SDL X11 X11-xcb Xdamage
WANTLIB-tools += Xext Xfixes Xxf86vm avutil c de265 double-conversion
WANTLIB-tools += drm execinfo expat freetype glapi glib-2.0 graphite2
WANTLIB-tools += gthread-2.0 harfbuzz iconv icudata icui18n icuio icuuc
WANTLIB-tools += intl pcre pcre2-16 png sndio swscale usbhid xcb xcb-dri2
WANTLIB-tools += xcb-dri3 xcb-glx xcb-present xcb-sync xcb-xfixes xshmfence
WANTLIB-tools += z zstd

MULTI_PACKAGES=	-main -tools

MASTER_SITES=	https://github.com/strukturag/libde265/releases/download/v$V/

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

LIB_DEPENDS-main= ${LIB_DEPENDS}

LIB_DEPENDS-tools= ${LIB_DEPENDS} \
		multimedia/libde265,-main \
		devel/sdl \
		graphics/ffmpeg \
		x11/qt5/qtbase

.include <bsd.port.mk>
