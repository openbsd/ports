# $OpenBSD: Makefile,v 1.9 2018/06/27 21:04:13 espie Exp $

COMMENT =	Gomoku-like game for two players for KDE
DISTNAME =	bovo-${MODKDE4_VERSION}
REVISION =	4

WANTLIB =	c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB +=	${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
