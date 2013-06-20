# $OpenBSD: Makefile,v 1.13 2013/06/20 19:02:18 jasper Exp $

COMMENT=		free replacements of Intel UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.8.6.1

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 e2fs-uuid expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gupnp-av-1.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 xcb xcb-render xcb-shm xml2 z gupnp-1.0 gssdp-1.0
WANTLIB += sqlite3

LIB_DEPENDS=		net/gupnp/av \
			sysutils/e2fsprogs>=1.41.4p5 \
			x11/gtk+3
RUN_DEPENDS=		devel/desktop-file-utils

.include <bsd.port.mk>
