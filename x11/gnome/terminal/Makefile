# $OpenBSD: Makefile,v 1.111 2013/10/21 15:31:50 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.10.1

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 dconf uuid
WANTLIB += expat ffi fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz m ncurses
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs util vte2_90 xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/gconf2 \
		devel/vte3>=0.34.6 \
		sysutils/e2fsprogs>=1.42.7

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
