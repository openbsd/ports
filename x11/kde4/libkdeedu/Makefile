# $OpenBSD: Makefile,v 1.8 2015/03/27 08:16:22 ajacoutot Exp $

COMMENT =	KDE libraries for education apps
CATEGORIES =	education devel
DISTNAME =	libkdeedu-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	keduvocdocument		52.0 # 4.7

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+3,-guic

.include <bsd.port.mk>
