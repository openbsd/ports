# $OpenBSD: Makefile,v 1.6 2015/03/27 08:16:20 ajacoutot Exp $

COMMENT =	geography learning tool for KDE
DISTNAME =	kgeography-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
