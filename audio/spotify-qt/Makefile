COMMENT =		lightweight Spotify client using Qt
DIST_TUPLE =		github	kraxarn	spotify-qt	v4.0.0	.
CATEGORIES =		audio x11

# GPLv3.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Svg Qt6Widgets c m

LIB_DEPENDS =		x11/qt6/qtsvg

RUN_DEPENDS =		audio/spotifyd \
			devel/desktop-file-utils \
			x11/gtk+4,-guic

# devel/kf5/kcrash is qt5-only
CONFIGURE_ARGS =	-DUSE_KCRASH=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

.include <bsd.port.mk>
