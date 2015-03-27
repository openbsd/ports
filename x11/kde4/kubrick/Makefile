# $OpenBSD: Makefile,v 1.5 2015/03/27 08:16:22 ajacoutot Exp $

COMMENT =	Rubik's cube simulator for KDE
DISTNAME =	kubrick-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread GL GLU
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
