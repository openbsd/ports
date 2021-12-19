# $OpenBSD: Makefile,v 1.52 2021/12/19 13:20:34 ajacoutot Exp $

COMMENT=		OpenGL-based interactive canvas library

GNOME_PROJECT=		clutter
GNOME_VERSION=		1.26.4
REVISION=		1

SHARED_LIBS +=  clutter-1.0          6.1   # 2600.0

WANTLIB += ${COMPILER_LIBCXX} EGL X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo cairo-gobject cogl cogl-pango cogl-path
WANTLIB += drm epoxy expat ffi fontconfig freetype fribidi gbm
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 harfbuzz iconv intl
WANTLIB += jpeg json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png xcb xcb-dri2 xcb-dri3 xcb-present
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xshmfence z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		devel/json-glib \
			graphics/clutter/cogl>=1.22.0 \
			x11/gtk+3

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-x11-backend \
			--enable-egl-backend

TEST_IS_INTERACTIVE=	X11

pre-configure:
	${SUBST_CMD} ${WRKSRC}/clutter/Makefile.in

.include <bsd.port.mk>
