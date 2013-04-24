# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:09:19 zhuk Exp $

COMMENT =	clickomania-like game for KDE
DISTNAME =	klickety-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knotifyconfig

MODKDE4_USE =	games

.include <bsd.port.mk>
