# $OpenBSD: Makefile,v 1.4 2014/07/09 20:03:26 zhuk Exp $

COMMENT =	KDE screen magnifier
DISTNAME =	kmag-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += qaccessibilityclient

LIB_DEPENDS =	x11/libqaccessibilityclient

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
