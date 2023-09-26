COMMENT =	gpx file viewer

VERSION =	0.4.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	18

CATEGORIES =	geo x11

HOMEPAGE =	https://launchpad.net/gpx-viewer
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 atspi brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += dbus-1 drm epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gbm gdk-3 gdk_pixbuf-2.0 gdl-3 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv idn2 intl jpeg json-glib-1.0 lzma
WANTLIB += m nghttp2 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 png psl soup-3.0 sqlite3 unistring xcb xcb-dri2
WANTLIB += xcb-dri3 xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xml2 xshmfence z

SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/

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
		x11/gtk+4,-guic

FAKE_FLAGS=	desktopdir=${PREFIX}/share/applications


.include <bsd.port.mk>
