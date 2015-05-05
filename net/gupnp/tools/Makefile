# $OpenBSD: Makefile,v 1.20 2015/05/05 17:00:18 sthen Exp $

COMMENT=		free replacements of Intel UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.8.9
REVISION=		1

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gssdp-1.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += gupnp-1.0 gupnp-av-1.0 harfbuzz lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 sqlite3 uuid xcb xcb-render xcb-shm
WANTLIB += xml2 z

LIB_DEPENDS=		net/gupnp/av \
			sysutils/e2fsprogs>=1.42.7 \
			x11/gtksourceview3
RUN_DEPENDS=		devel/desktop-file-utils
BUILD_DEPENDS=		x11/gnome/icon-theme

.include <bsd.port.mk>
