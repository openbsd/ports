# $OpenBSD: Makefile,v 1.9 2015/06/26 09:18:39 ajacoutot Exp $

COMMENT =	KDE mouse clicker for accessibility users
DISTNAME =	kmousetool-${MODKDE4_VERSION}
REVISION =	2

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
