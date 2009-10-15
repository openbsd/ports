# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 11:27:46 landry Exp $

COMMENT =	map viewer using Openstreetmap data

GNOME_VERSION =	0.1.0
GNOME_PROJECT =	emerillon

CATEGORIES =	geo x11

HOMEPAGE =	http://www.novopia.com/emerillon/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
DESKTOP_FILES =		yes

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

MODGCONF2_SCHEMAS_DIR=	emerillon
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	champlain-0.4,champlain-gtk-0.4:libchamplain->=0.4.0:geo/libchamplain/core \
		soup-gnome-2.4::devel/libsoup,-gnome \
		ethos-1.0,ethos-ui-1.0::devel/ethos \
		geoclue::geo/geoclue \
		rest::net/librest

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += clutter-glx-1.0 clutter-gtk-0.10 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 xcb xml2 z
WANTLIB += proxy ORBit-2 Xxf86vm dbus-1 dbus-glib-1 drm gnome-keyring

.include <bsd.port.mk>
