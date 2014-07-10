# $OpenBSD: Makefile,v 1.5 2014/07/10 19:55:27 zhuk Exp $

COMMENT =	KDE mouse clicker for accessibility users
DISTNAME =	kmousetool-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
