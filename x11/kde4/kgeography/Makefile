# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:30 zhuk Exp $

COMMENT =	geography learning tool for KDE
DISTNAME =	kgeography-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
