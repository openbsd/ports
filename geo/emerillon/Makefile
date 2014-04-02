# $OpenBSD: Makefile,v 1.31 2014/04/02 09:36:10 jasper Exp $

COMMENT =	map viewer using Openstreetmap data

GNOME_VERSION =	0.1.90
GNOME_PROJECT =	emerillon
REVISION =	4

CATEGORIES =	geo x11

HOMEPAGE =	http://projects.gnome.org/emerillon/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango dbus-1
WANTLIB += dbus-glib-1 expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 cogl-path
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 xcb xcb-render xcb-shm xml2 z

EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE =	gnu

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection vala yelp

LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		devel/libpeas \
		geo/geoclue \
		net/librest>=0.7.9 \
		devel/gobject-introspection

.include <bsd.port.mk>
