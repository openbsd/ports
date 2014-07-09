# $OpenBSD: Makefile,v 1.5 2014/07/09 20:03:27 zhuk Exp $

COMMENT =	2D space arcade game for KDE
DISTNAME =	kspaceduel-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
