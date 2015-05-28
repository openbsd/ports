# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:26 pascal Exp $

COMMENT =	Gomoku-like game for two players for KDE
DISTNAME =	bovo-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =	c m pthread
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB +=	${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
