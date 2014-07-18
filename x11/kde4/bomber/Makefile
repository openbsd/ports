# $OpenBSD: Makefile,v 1.6 2014/07/18 08:17:08 zhuk Exp $

COMMENT =	bomber 2D arcade game for KDE
DISTNAME =	bomber-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
