# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:59:50 zhuk Exp $

COMMENT =	swap-and-remove puzzle game for KDE
DISTNAME =	kdiamond-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig 

MODKDE4_USE =	games

.include <bsd.port.mk>
