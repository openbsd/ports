COMMENT =	qt platform integration plugin for LXQt

NAME =		lxqt-qtplugin

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5XdgIconLoader dbusmenu-qt5 m

LIB_DEPENDS +=		x11/qt5/qtsvg \
			x11/lxqt/libqtxdg \
			x11/dbusmenu-qt

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			x11/lxqt/libfm-qt

RUN_DEPENDS +=		x11/lxqt/liblxqt \
			x11/lxqt/libfm-qt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lxqtplatformtheme.cpp

.include <bsd.port.mk>
