# $OpenBSD: Makefile,v 1.50 2019/12/29 23:56:58 ajacoutot Exp $

COMMENT=	free space simulator and planetarium

DISTNAME=	celestia-1.6.1
REVISION=	19

CATEGORIES=	astro x11

HOMEPAGE=	https://celestia.space/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=celestia/}

WANTLIB += ${COMPILER_LIBCXX} GL GLU X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0 gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 harfbuzz iconv intl jpeg m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png theora
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z
WANTLIB += ${MODLUA_WANTLIB}

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	lang/lua
BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		multimedia/libtheora \
		x11/gtkglext \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lGL" \
		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
		LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

CONFIGURE_ARGS=	--with-gtk \
		--with-lua \
		--enable-cairo \
		--enable-theora

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/celestia/celestiacore.cpp

post-install:
	${INSTALL_DATA} ${WRKSRC}/models/*.3ds \
		${PREFIX}/share/celestia/models

.include <bsd.port.mk>
