# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:31 zhuk Exp $

COMMENT =	minesweeper game for KDE
DISTNAME =	kmines-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
