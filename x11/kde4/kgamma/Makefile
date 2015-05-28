# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:27 pascal Exp $

COMMENT =	KDE screen gamma management
DISTNAME =	kgamma-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext Xxf86vm
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

.include <bsd.port.mk>
