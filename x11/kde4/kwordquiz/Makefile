# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:29 pascal Exp $

COMMENT =	general purpose flash card program for KDE
DISTNAME =	kwordquiz-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/keduvocdocument ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kprintutils

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/libkdeedu>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
