# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:15:47 zhuk Exp $

COMMENT =	rotating pieces game for KDE
DISTNAME =	knetwalk-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig

MODKDE4_USE =	games

.include <bsd.port.mk>
