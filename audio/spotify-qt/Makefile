COMMENT =		lightweight Spotify client using Qt
DIST_TUPLE =		github	kraxarn	spotify-qt	v3.10	.
CATEGORIES =		audio x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Svg Qt6Widgets c gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += m secret-1

LIB_DEPENDS =		devel/glib2 \
			x11/gnome/libsecret \
			x11/qt6/qtsvg

RUN_DEPENDS =		audio/spotifyd \
			devel/desktop-file-utils \
			x11/gtk+4,-guic

# devel/kf5/kcrash is qt5-only
CONFIGURE_ARGS =	-DUSE_QT6=ON \
			-DUSE_KCRASH=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
