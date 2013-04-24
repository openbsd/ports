# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:08:56 zhuk Exp $

COMMENT =	alphabet learning application for KDE
DISTNAME =	klettres-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knewstuff3

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
