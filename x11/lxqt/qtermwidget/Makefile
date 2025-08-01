COMMENT =	terminal widget for QTerminal

NAME =		qtermwidget

SHARED_LIBS +=  qtermwidget6 0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets m util

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/qtermwidget.cpp

.include <bsd.port.mk>
