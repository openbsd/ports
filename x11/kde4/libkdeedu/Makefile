# $OpenBSD: Makefile,v 1.6 2013/12/08 19:13:32 zhuk Exp $

COMMENT =	KDE libraries for education apps
CATEGORIES =	education devel
DISTNAME =	libkdeedu-${MODKDE4_VERSION}

SHARED_LIBS =	keduvocdocument		51.0 # 4.7

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+2,-guic

.include <bsd.port.mk>
