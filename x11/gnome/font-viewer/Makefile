# $OpenBSD: Makefile,v 1.5 2013/03/11 11:46:10 espie Exp $

COMMENT=		font viewer for GNOME

GNOME_PROJECT=		gnome-font-viewer
GNOME_VERSION=		3.6.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ xcb xcb-render xcb-shm z xkbfile

LIB_DEPENDS=		x11/gnome/desktop

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
