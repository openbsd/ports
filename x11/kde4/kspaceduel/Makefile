# $OpenBSD: Makefile,v 1.3 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	2D space arcade game for KDE
DISTNAME =	kspaceduel-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
