# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:28 pascal Exp $

COMMENT =	galactic strategy game for KDE
DISTNAME =	konquest-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
