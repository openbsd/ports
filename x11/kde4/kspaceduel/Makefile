# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:29 pascal Exp $

COMMENT =	2D space arcade game for KDE
DISTNAME =	kspaceduel-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
