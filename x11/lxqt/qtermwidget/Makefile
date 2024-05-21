COMMENT =	the terminal widget for QTerminal

VERSION =	1.4.0
NAME =		qtermwidget

SHARED_LIBS +=  qtermwidget5              2.0 # 1.0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

MODULES =	x11/qt5 devel/cmake

BUILD_DEPENDS =	x11/lxqt/build-tools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/qtermwidget.cpp

.include <bsd.port.mk>
