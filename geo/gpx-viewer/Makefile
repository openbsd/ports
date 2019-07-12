# $OpenBSD: Makefile,v 1.47 2019/07/12 20:46:29 sthen Exp $

COMMENT =	gpx file viewer

VERSION =	0.4.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	14

CATEGORIES =	geo x11

HOMEPAGE =	https://launchpad.net/gpx-viewer
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path drm epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gbm gdk-3 gdk_pixbuf-2.0 gdl-3
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv idn2 intl json-glib-1.0 lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png psl
WANTLIB += pthread soup-2.4 sqlite3 unistring xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes xml2
WANTLIB += xshmfence z

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
