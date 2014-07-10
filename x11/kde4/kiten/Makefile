# $OpenBSD: Makefile,v 1.6 2014/07/10 19:55:27 zhuk Exp $

COMMENT =	Japanese reference tool for KDE
DISTNAME =	kiten-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kiten			50.0 # 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
