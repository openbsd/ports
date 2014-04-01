# $OpenBSD: Makefile,v 1.10 2014/04/01 13:21:14 ajacoutot Exp $

BROKEN=		runtime issue (threads related?)

SHARED_ONLY=	Yes

COMMENT=	C/C++ debugger for GNOME

GNOME_PROJECT=	nemiver
GNOME_VERSION=	0.9.5

CATEGORIES=	devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi c cairo cairo-gobject cairomm-1.0 dbus-1 expat
WANTLIB += ffi fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gdl-3 gdlmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtkhex-3 gtkmm-3.0 gtksourceview-3.0 gtksourceviewmm-3.0
WANTLIB += gtop-2.0 harfbuzz kvm m ncurses pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 sqlite3 stdc++ util vte2_90
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/boost \
		devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/gdb
LIB_DEPENDS=	devel/libgtop2 \
		devel/vte3 \
		x11/gnome/gdlmm \
		x11/gnome/ghex \
		x11/gtksourceviewmm3

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		yelp

CONFIGURE_ARGS=	--with-default-gdb=${LOCALBASE}/bin/egdb

post-install:
	rm ${PREFIX}/lib/nemiver/{,modules,plugins/*}/*.{a,la}

.include <bsd.port.mk>
