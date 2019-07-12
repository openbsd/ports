# $OpenBSD: Makefile,v 1.49 2019/07/12 20:43:30 sthen Exp $

COMMENT=	free space simulator and planetarium

DISTNAME=	celestia-1.6.1
REVISION=	18

CATEGORIES=	astro x11

HOMEPAGE=	https://celestia.space/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=celestia/}

WANTLIB += GL GLU ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gdkglext-x11-1.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 harfbuzz iconv intl jpeg m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangox-1.0 pcre pixman-1
WANTLIB += png pthread ${COMPILER_LIBCXX} theora xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm z
WANTLIB += ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

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
