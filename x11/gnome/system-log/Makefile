# $OpenBSD: Makefile,v 1.8 2013/03/11 11:46:12 espie Exp $

COMMENT=		system log viewer for GNOME

GNOME_PROJECT=		gnome-system-log
GNOME_VERSION=		3.6.1

# GPLv2+ - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icule icuuc m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
