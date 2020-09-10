# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:38 mariani Exp $

COMMENT =	the terminal widget for QTerminal

VERSION =	0.15.0
REVISION =      0

NAME =		qtermwidget
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  qtermwidget5              0.1 # 0.15.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

BUILD_DEPENDS +=	x11/lxqt/build-tools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/qtermwidget.cpp

.include <bsd.port.mk>
