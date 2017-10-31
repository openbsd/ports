# $OpenBSD: Makefile,v 1.39 2017/10/31 16:29:27 ajacoutot Exp $

COMMENT =	gpx file viewer

VERSION =	0.4.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	7

CATEGORIES =	geo x11

HOMEPAGE =	http://blog.sarine.nl/gpx-viewer/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/

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
		x11/gtk+3,-guic

FAKE_FLAGS=	desktopdir=${PREFIX}/share/applications

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += dbus-1 drm epoxy expat ffi fontconfig freetype gbm
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdl-3 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz json-glib-1.0
WANTLIB += lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread soup-2.4 sqlite3 xcb xcb-dri2 xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 z

.include <bsd.port.mk>
