COMMENT =	qt platform integration plugin for LXQt

NAME =		lxqt-qtplugin

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Svg
WANTLIB += Qt6Widgets Qt6XdgIconLoader dbusmenu-lxqt m

LIB_DEPENDS =	x11/qt6/qtsvg \
		x11/lxqt/libqtxdg \
		x11/lxqt/libdbusmenu

BUILD_DEPENDS =	x11/lxqt/build-tools2 \
		x11/lxqt/libfm-qt

RUN_DEPENDS =	x11/lxqt/liblxqt \
		x11/lxqt/libfm-qt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lxqtplatformtheme.cpp

.include <bsd.port.mk>
