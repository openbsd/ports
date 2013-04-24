# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:21:20 zhuk Exp $

COMMENT =	KDE password management
DISTNAME =	kwallet-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kio

.include <bsd.port.mk>
