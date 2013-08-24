# $OpenBSD: Makefile,v 1.2 2013/08/24 17:33:42 zhuk Exp $

COMMENT =	KDE screen gamma management
DISTNAME =	kgamma-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xxf86vm
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

.include <bsd.port.mk>
