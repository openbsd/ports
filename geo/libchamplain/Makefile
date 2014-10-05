# $OpenBSD: Makefile,v 1.27 2014/10/05 19:04:29 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.9
REVISION=	0
API_VERSION=	0.12

SHARED_LIBS +=  champlain-${API_VERSION}       1.1      # 4.3
SHARED_LIBS +=  champlain-gtk-${API_VERSION}   1.1      # 4.3

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango dbus-1 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4
WANTLIB += sqlite3 xcb xcb-render xcb-shm xml2 z cogl-path
WANTLIB += EGL X11-xcb Xau Xdmcp drm gbm glapi xcb-dri2 xcb-shape
WANTLIB += xcb-xfixes

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libsoup \
			graphics/clutter/clutter-gtk

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
