COMMENT =	adjust color temperature of your screen

V =		2.0.11
COMMIT =	60f3fe757a9a218379b10e991486f91c10c5a215
DIST_TUPLE =	gitlab chinstrap gammastep v${V} .

CATEGORIES =	misc wayland x11

# GPLv3 only
PERMIT_PACKAGE = Yes

WANTLIB += X11 Xau Xdmcp Xext Xxf86vm c drm epoll-shim ffi gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 iconv intl m pcre2-8
WANTLIB += pthread wayland-client xcb xcb-randr z

MODULES =		lang/python \
			textproc/intltool
MODPY_ADJ_FILES =	src/gammastep-indicator/gammastep-indicator.in

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_ARGS =	--enable-gui \
			--enable-geoclue2

BUILD_DEPENDS =		wayland/wayland-protocols

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3 \
			devel/py-xdg \
			geo/geoclue2 \
			x11/gtk+4,-guic \
			x11/gtk+3

LIB_DEPENDS =		devel/glib2 \
			wayland/wayland

FAKE_FLAGS =		UPDATE_ICON_CACHE=true

WRKDIST =		${WRKDIR}/gammastep-v${V}-${COMMIT}

pre-configure:
	cd ${WRKSRC}; intltoolize --force

.include <bsd.port.mk>
