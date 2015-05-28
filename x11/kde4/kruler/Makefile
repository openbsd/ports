# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:29 pascal Exp $

COMMENT =	screen ruler for KDE
DISTNAME =	kruler-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
