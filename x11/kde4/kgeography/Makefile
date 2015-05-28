# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:27 pascal Exp $

COMMENT =	geography learning tool for KDE
DISTNAME =	kgeography-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
