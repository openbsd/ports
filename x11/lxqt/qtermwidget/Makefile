COMMENT =	the terminal widget for QTerminal

NAME =		qtermwidget

SHARED_LIBS +=  qtermwidget6 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets m util

BUILD_DEPENDS =	x11/lxqt/build-tools2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/qtermwidget.cpp

.include <bsd.port.mk>
