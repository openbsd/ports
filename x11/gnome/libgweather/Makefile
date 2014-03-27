# $OpenBSD: Makefile,v 1.57 2014/03/27 08:23:28 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.12.0

SHARED_LIBS +=		gweather-3             2.1      # 7.3

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS= 	gi vala
MODGNOME_ICON_CACHE=	Yes

LIB_DEPENDS=		devel/libsoup>=2.42.0 \
			x11/gtk+3

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo" \
			--disable-glade-catalog

.include <bsd.port.mk>
