# $OpenBSD: Makefile,v 1.5 2015/03/27 08:16:19 ajacoutot Exp $

COMMENT =	Gomoku-like game for two players for KDE
DISTNAME =	bovo-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =	c m pthread
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB +=	${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
