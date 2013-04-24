# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:13:38 zhuk Exp $

COMMENT =	mathematical function plotter for KDE
DISTNAME =	kmplot-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

.include <bsd.port.mk>
