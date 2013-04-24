# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:56:30 zhuk Exp $

COMMENT =	hide and seek game for KDE
DISTNAME =	kblackbox-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
