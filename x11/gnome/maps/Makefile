# $OpenBSD: Makefile,v 1.8 2014/04/15 06:20:53 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.12.1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m mozjs-24 ncursesw pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += readline xcb xcb-render xcb-shm z

MODULES=		x11/gnome \
			devel/dconf

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gnome/gjs

# loads JS from an included GResource
RUN_DEPENDS=		geo/geocode-glib \
			geo/geoclue2 \
			geo/libchamplain

.include <bsd.port.mk>
