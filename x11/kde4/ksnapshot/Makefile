# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:29 pascal Exp $

COMMENT =	screen capture program for KDE
DISTNAME =	ksnapshot-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext Xfixes
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kipi

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/libkipi>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
