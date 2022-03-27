COMMENT =	lightweight web browser

V =	9.0
DISTNAME =	midori-v${V}
PKGNAME =	midori-${V}
REVISION =	0

HOMEPAGE =	https://www.midori-browser.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	www
SHARED_LIBS +=	midori-core 1.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		textproc/intltool
MASTER_SITES =	https://github.com/midori-browser/core/releases/download/v${V}/

LIB_DEPENDS =	www/webkitgtk4 \
		devel/libpeas \
		devel/libsoup \
		x11/gnome/gcr

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

BUILD_DEPENDS =	lang/vala \
		devel/gettext,-tools \
		x11/gnome/librsvg

WANTLIB =  archive atk-1.0 c cairo cairo-gobject gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 harfbuzz intl
WANTLIB += javascriptcoregtk-4.0 json-glib-1.0 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 peas-1.0 peas-gtk-1.0 soup-2.4 sqlite3
WANTLIB += webkit2gtk-4.0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
