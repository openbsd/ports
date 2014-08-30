# $OpenBSD: Makefile,v 1.8 2014/08/30 12:30:11 ajacoutot Exp $

COMMENT =		AppData tools

DISTNAME =		appdata-tools-0.1.8

CATEGORIES =		misc

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://people.freedesktop.org/~hughsient/releases/
EXTRACT_SUFX =		.tar.xz

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender appstream-glib atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/gettext \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		docbook

USE_GMAKE=		Yes

LIB_DEPENDS =		devel/appstream-glib

CONFIGURE_STYLE =	gnu

# requires jing-trang
CONFIGURE_ARGS =	--disable-schemas

# our old gcc does not handle some of the warning flags
MAKE_FLAGS=		WARNINGFLAGS_C=

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
