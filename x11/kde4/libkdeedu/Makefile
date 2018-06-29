# $OpenBSD: Makefile,v 1.11 2018/06/29 22:16:31 espie Exp $

COMMENT =	KDE libraries for education apps
CATEGORIES =	education devel
DISTNAME =	libkdeedu-${MODKDE4_VERSION}
REVISION =	3

SHARED_LIBS =	keduvocdocument		52.0 # 4.7

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+3,-guic

.include <bsd.port.mk>
