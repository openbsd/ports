# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:17:18 zhuk Exp $

COMMENT =	galactic strategy game for KDE
DISTNAME =	konquest-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
