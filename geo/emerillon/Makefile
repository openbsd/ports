# $OpenBSD: Makefile,v 1.37 2017/11/21 00:13:01 naddy Exp $

COMMENT =	map viewer using Openstreetmap data

GNOME_VERSION =	0.1.90
GNOME_PROJECT =	emerillon
REVISION =	10

CATEGORIES =	geo x11

HOMEPAGE =	http://projects.gnome.org/emerillon/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango cogl-path dbus-1
WANTLIB += dbus-glib-1 drm epoxy expat ffi fontconfig freetype gbm gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 girepository-1.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl json-glib-1.0 lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += xcb xcb-dri2 xcb-render xcb-shape xcb-shm xcb-xfixes xml2 z

EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE =	gnu

MODULES=	devel/dconf \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection vala yelp

LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		devel/libpeas \
		geo/geoclue \
		net/librest>=0.7.9 \
		devel/gobject-introspection

.include <bsd.port.mk>
