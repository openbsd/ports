# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:16:35 zhuk Exp $

COMMENT =	simple ball dodging game for KDE
DISTNAME =	kollision-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
