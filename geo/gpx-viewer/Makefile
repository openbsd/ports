# $OpenBSD: Makefile,v 1.16 2011/11/03 17:35:12 jasper Exp $

COMMENT =	gpx file viewer

VERSION =	0.2.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	5

CATEGORIES =	geo x11

HOMEPAGE =	http://blog.sarine.nl/gpx-viewer/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.65
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_VALAC=""
USE_GMAKE =		yes

MODULES =	devel/gettext \
		textproc/intltool
LIB_DEPENDS =	devel/libunique \
		geo/libchamplain/core>=0.8.0 \
		x11/gnome/gdl1
RUN_DEPENDS =	devel/desktop-file-utils

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo champlain-0.8 champlain-gtk-0.8
WANTLIB += clutter-glx-1.0 clutter-gtk-0.10 dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdl-1 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3 unique-1.0
WANTLIB += xcb xcb-render xcb-shm xml2 z ffi

.include <bsd.port.mk>
