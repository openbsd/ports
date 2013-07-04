# $OpenBSD: Makefile,v 1.3 2013/07/04 00:46:25 zhuk Exp $

COMMENT =	KDE libraries for education apps
DISTNAME =	libkdeedu-${MODKDE4_VERSION}

SHARED_LIBS =	keduvocdocument		50.0 # 4.7

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
