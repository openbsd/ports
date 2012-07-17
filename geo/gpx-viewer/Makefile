# $OpenBSD: Makefile,v 1.21 2012/07/17 07:28:27 landry Exp $

COMMENT =	gpx file viewer

VERSION =	0.2.1pre247
DISTNAME =	gpx-viewer-${VERSION}

CATEGORIES =	geo x11

HOMEPAGE =	http://blog.sarine.nl/gpx-viewer/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/
# hosted snapshot of rev247 from
# bzr branch lp:~gpx-viewer-team/gpx-viewer/port-to-libchamplain-0.12
MASTER_SITES =	http://rhaalovely.net/stuff/

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GMAKE =		yes
USE_LIBTOOL =		gnu #libtoolize

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} NOCONFIGURE=1 ./autogen.sh

MODULES =	devel/gettext \
		textproc/intltool
LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		x11/gnome/gdl
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic
BUILD_DEPENDS =	lang/vala

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-gtk-1.0 dbus-1
WANTLIB += cairo-gobject clutter-1.0 cogl cogl-pango drm gdk-3 gtk-3
WANTLIB += expat fontconfig freetype gcrypt gdk_pixbuf-2.0
WANTLIB += gdl-3 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gthread-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm xml2 z ffi

.include <bsd.port.mk>
