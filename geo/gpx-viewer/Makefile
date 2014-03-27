# $OpenBSD: Makefile,v 1.28 2014/03/27 13:46:09 jasper Exp $

COMMENT =	gpx file viewer

VERSION =	0.3.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	3

CATEGORIES =	geo x11

HOMEPAGE =	http://blog.sarine.nl/gpx-viewer/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/0.2.0/+download/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_VALAC=""
USE_GMAKE =		yes
CONFIGURE_ARGS +=	--disable-database-updates

MODULES =	devel/gettext \
		textproc/intltool
LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		x11/gnome/gdl
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

FAKE_FLAGS=	desktopdir=${PREFIX}/share/applications

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-gtk-1.0 dbus-1 cogl-path
WANTLIB += cairo-gobject clutter-1.0 cogl cogl-pango gdk-3 gtk-3
WANTLIB += expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gdl-3 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm xml2 z ffi
WANTLIB += ICE SM atk-bridge-2.0 atspi graphite2 harfbuzz

.include <bsd.port.mk>
