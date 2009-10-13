# $OpenBSD: Makefile,v 1.1.1.1 2009/10/13 19:36:31 landry Exp $

COMMENT =	3D scene graph library for rich UI

CATEGORIES =	graphics

DISTNAME =	pigment-0.3.17
MASTER_SITES =	http://elisa.fluendo.com/static/download/pigment/

SHARED_LIBS +=	pigment-0.3 0.0 \
		pigment-gtk-0.3 0.0 \
		pigment-imaging-0.3 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE =	https://code.fluendo.com/pigment/trac

CONFIGURE_STYLE =	gnu
#tslib is linux only
CONFIGURE_ARGS =	--enable-touchscreen=no \
			--enable-opengl-tests

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

MODULES =	devel/gettext
USE_LIBTOOL =	Yes
USE_GMAKE =	Yes
# needs a check-enabled gstreamer
NO_REGRESS =	Yes

LIB_DEPENDS =	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0,gdk_pixbuf_xlib-2.0::x11/gtk+2 \
		gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre xml2
WANTLIB += pixman-1 png pthread-stubs xcb z gstbase-0.10 gstreamer-0.10

.include <bsd.port.mk>
