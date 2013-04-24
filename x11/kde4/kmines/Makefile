# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:11:55 zhuk Exp $

COMMENT =	minesweeper game for KDE
DISTNAME =	kmines-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

.include <bsd.port.mk>
