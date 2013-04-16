# $OpenBSD: Makefile,v 1.7 2013/04/16 13:17:02 ajacoutot Exp $

COMMENT=		clock application for GNOME

GNOME_PROJECT=		gnome-clocks
GNOME_VERSION=		3.8.1

HOMEPAGE=		https://live.gnome.org/GnomeClocks

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject canberra dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gweather-3 harfbuzz icudata icule icuuc ltdl m notify
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm xkbfile xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra \
			devel/libnotify \
			devel/libtool,-ltdl \
			x11/gnome/desktop \
			x11/gnome/libgweather

MODGNOME_TOOLS=		gi vala
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11

CONFIGURE_STYLE=	autoconf no-autoheader

pre-configure:
	perl -pi -e 's,.-Wno-unused-but-set-variable,,' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
