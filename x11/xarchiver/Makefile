COMMENT =	simple archive manager
CATEGORIES =	x11 archivers
DIST_TUPLE =	github	ib	xarchiver	0.5.4.21	.
REVISION =	1

HOMEPAGE =	https://xarchiver.sourceforge.net

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-render xcb-shm xkbcommon
WANTLIB += z

MODULES =	textproc/intltool

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	textproc/libxslt
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	devel/gettext,-runtime \
		x11/gtk+3
RUN_DEPENDS =	archivers/zip \
		archivers/unzip \
		archivers/gtar \
		archivers/p7zip \
		devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

.include <bsd.port.mk>
