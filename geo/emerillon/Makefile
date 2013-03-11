# $OpenBSD: Makefile,v 1.22 2013/03/11 11:07:42 espie Exp $

COMMENT =	map viewer using Openstreetmap data

GNOME_VERSION =	0.1.90
GNOME_PROJECT =	emerillon
REVISION =	0

CATEGORIES =	geo x11

HOMEPAGE =	http://projects.gnome.org/emerillon/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE =	gnu
MODGNOME_DESKTOP_FILE =		yes

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= 	goi vala yelp

LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		devel/libpeas \
		geo/geoclue \
		net/librest>=0.7.9 \
		devel/gobject-introspection

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango gdk-3 gtk-3 peas-1.0
WANTLIB += peas-gtk-1.0 dbus-1 dbus-glib-1 drm expat xml2 z
WANTLIB += ffi fontconfig freetype gcrypt gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ xcb xcb-render xcb-shm
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule
WANTLIB += icuuc memphis-0.2

.include <bsd.port.mk>
