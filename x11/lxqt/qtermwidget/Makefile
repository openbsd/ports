# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:44 rsadowski Exp $

COMMENT =	the terminal widget for QTerminal

NAME =		qtermwidget

SHARED_LIBS +=  qtermwidget5              1.0 # 1.0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

BUILD_DEPENDS +=	x11/lxqt/build-tools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/qtermwidget.cpp

.include <bsd.port.mk>
