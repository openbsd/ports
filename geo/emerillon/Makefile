# $OpenBSD: Makefile,v 1.5 2010/10/11 08:14:07 jasper Exp $

COMMENT =	map viewer using Openstreetmap data

GNOME_VERSION =	0.1.2
GNOME_PROJECT =	emerillon
REVISION=	0

CATEGORIES =	geo x11

HOMEPAGE =	http://projects.gnome.org/emerillon/
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

AUTOCONF_VERSION=	2.63
CONFIGURE_STYLE=	autoconf
MODGCONF2_SCHEMAS_DIR=	emerillon
MODGNOME_HELP_FILES=	Yes
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--enable-introspection=no

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	::lang/vala
LIB_DEPENDS =	:libchamplain->=0.8.0:geo/libchamplain/core \
		::devel/libsoup,-gnome \
		::devel/ethos \
		::geo/geoclue \
		::net/librest

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += clutter-glx-1.0 clutter-gtk-0.10 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 xcb xml2 z ethos-1.0 ethos-ui-1.0
WANTLIB += proxy ORBit-2 Xxf86vm dbus-1 dbus-glib-1 drm gnome-keyring
WANTLIB += champlain-0.8 champlain-gtk-0.8 soup-gnome-2.4
WANTLIB += geoclue rest eggdbus-1 xcb-render xcb-render-util

.include <bsd.port.mk>
