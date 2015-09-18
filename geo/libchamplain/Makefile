# $OpenBSD: Makefile,v 1.31 2015/09/18 18:43:39 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	library to provide a GTK+ widget to display maps

GNOME_PROJECT=	libchamplain
GNOME_VERSION=	0.12.11
API_VERSION=	0.12

SHARED_LIBS +=  champlain-${API_VERSION}       1.2      # 4.3
SHARED_LIBS +=  champlain-gtk-${API_VERSION}   1.1      # 4.3

SUBST_VARS+=	API_VERSION

CATEGORIES=	geo devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango cogl-path dbus-1 drm epoxy expat ffi fontconfig
WANTLIB += freetype gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3 xcb
WANTLIB += xcb-dri2 xcb-render xcb-shape xcb-shm xcb-xfixes xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libsoup \
			graphics/clutter/clutter-gtk

MODGNOME_TOOLS +=	gobject-introspection vala

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
