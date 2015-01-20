# $OpenBSD: Makefile,v 1.10 2015/01/20 21:58:39 zhuk Exp $

COMMENT =	letter order game for KDE
DISTNAME =	kanagram-${MODKDE4_VERSION}

#SHARED_LIBS =	kanagramengine		51.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/keduvocdocument ${KDE4LIB}/kio ${KDE4LIB}/plasma

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/libkdeedu>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
