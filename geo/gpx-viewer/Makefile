# $OpenBSD: Makefile,v 1.45 2019/02/21 08:30:46 jasper Exp $

COMMENT =	gpx file viewer

VERSION =	0.4.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	13

CATEGORIES =	geo x11

HOMEPAGE =	https://launchpad.net/gpx-viewer
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += drm epoxy expat ffi fontconfig freetype fribidi gbm
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdl-3 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += idn2 intl json-glib-1.0 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16 psl pthread soup-2.4
WANTLIB += sqlite3 unistring xcb xcb-dri2 xcb-dri3 xcb-present
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xml2 xshmfence
WANTLIB += z

MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_VALAC=""
USE_GMAKE =		yes
CONFIGURE_ARGS +=	--disable-database-updates

MODULES =	textproc/intltool
LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		x11/gnome/gdl
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

FAKE_FLAGS=	desktopdir=${PREFIX}/share/applications


.include <bsd.port.mk>
