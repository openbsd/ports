COMMENT =	lightweight Qt terminal emulator based on QTermWidget

VERSION =	1.4.0
NAME =		qterminal

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras X11 c canberra m qtermwidget5 util

MODULES =	x11/qt5 devel/cmake
LIB_DEPENDS =	x11/lxqt/qtermwidget>=1.4.0 \
		audio/libcanberra \
		x11/qt5/qtx11extras

BUILD_DEPENDS =	x11/lxqt/build-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
