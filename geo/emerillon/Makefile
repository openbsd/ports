# $OpenBSD: Makefile,v 1.18 2012/07/07 13:00:44 jasper Exp $

BROKEN =	need fixing after libchamplain update

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=		"-DG_CONST_RETURN=const"

COMMENT =	map viewer using Openstreetmap data

GNOME_VERSION =	0.1.2
GNOME_PROJECT =	emerillon
REVISION=	7

CATEGORIES =	geo x11

HOMEPAGE =	http://projects.gnome.org/emerillon/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE =	gnu
MODGNOME_DESKTOP_FILE =		yes

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

AUTOCONF_VERSION=	2.65
CONFIGURE_STYLE=	autoconf
MODGCONF2_SCHEMAS_DIR=	emerillon

MODGNOME_TOOLS= 	goi vala yelp

LIB_DEPENDS =	geo/libchamplain/core>=0.8.0 \
		devel/ethos \
		geo/geoclue \
		net/librest>=0.7.9 \
		devel/gobject-introspection

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += champlain-0.8 champlain-gtk-0.8 clutter-glx-1.0 clutter-gtk-0.10
WANTLIB += dbus-1 dbus-glib-1 drm ethos-1.0 ethos-ui-1.0 expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ xcb xcb-render xcb-shm
WANTLIB += xml2 z

.include <bsd.port.mk>
