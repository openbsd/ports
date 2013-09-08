# $OpenBSD: Makefile,v 1.11 2013/09/08 13:08:15 landry Exp $

COMMENT =	3D scene graph library for rich UI

CATEGORIES =	graphics

DISTNAME =	pigment-0.3.17
MASTER_SITES =	http://elisa.fluendo.com/static/download/pigment/

REVISION =	5

SHARED_LIBS +=	pigment-0.3 0.0 \
		pigment-gtk-0.3 0.0 \
		pigment-imaging-0.3 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	https://code.fluendo.com/pigment/trac

CONFIGURE_STYLE =	gnu
#tslib is linux only
CONFIGURE_ARGS =	--enable-touchscreen=no \
			--enable-opengl-tests

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

MODULES =	devel/gettext
USE_GMAKE =	Yes
# needs a check-enabled gstreamer
NO_TEST =	Yes

LIB_DEPENDS =	x11/gtk+2 \
		multimedia/gstreamer-0.10/plugins-base

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre xml2
WANTLIB += pixman-1 png pthread-stubs xcb z gstbase-0.10 gstreamer-0.10
WANTLIB += gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 gtk-x11-2.0 gdk-x11-2.0
WANTLIB += gstvideo-0.10 Xxf86vm drm ffi stdc++ xcb-render xcb-shm

.include <bsd.port.mk>
