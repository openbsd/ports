# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:28 pascal Exp $

COMMENT =	KDE screen magnifier
DISTNAME =	kmag-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += qaccessibilityclient

LIB_DEPENDS =	x11/libqaccessibilityclient

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
