# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:29 pascal Exp $

COMMENT =	Dots-and-Boxes-like game for KDE
DISTNAME =	ksquares-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
