# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	bomber 2D arcade game for KDE
DISTNAME =	bomber-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
