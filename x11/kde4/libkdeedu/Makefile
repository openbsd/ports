# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:25:31 zhuk Exp $

COMMENT =	KDE libraries for education apps
DISTNAME =	libkdeedu-${MODKDE4_VERSION}

SHARED_LIBS =	keduvocdocument		0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
