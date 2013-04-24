# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:21:12 zhuk Exp $

COMMENT =	screen ruler for KDE
DISTNAME =	kruler-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
