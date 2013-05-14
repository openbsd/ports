# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE libraries for education apps
DISTNAME =	libkdeedu-${MODKDE4_VERSION}

SHARED_LIBS =	keduvocdocument		50.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
