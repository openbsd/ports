COMMENT=		free space simulator and planetarium

GH_ACCOUNT=		CelestiaProject
GH_PROJECT=		Celestia
GH_TAGNAME=		1.6.2.2
PKGNAME=		celestia-${GH_TAGNAME}
REVISION=		0

CATEGORIES=		astro x11

HOMEPAGE=		https://celestia.space/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm atk-1.0 c cairo drm expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 gtkglext-x11-1.0 harfbuzz iconv intl jpeg
WANTLIB += lua5.1 m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png theora xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xshmfence z

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		lang/lua

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		multimedia/libtheora \
			x11/gtkglext \
			${MODLUA_LIB_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lGL" \
			LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
			LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

CONFIGURE_ARGS=		--with-gtk \
			--with-lua \
			--enable-cairo \
			--enable-theora

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/celestia/celestiacore.cpp

post-install:
	${INSTALL_DATA} ${WRKSRC}/models/*.3ds \
		${PREFIX}/share/celestia/models

.include <bsd.port.mk>
