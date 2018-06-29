# $OpenBSD: Makefile,v 1.9 2018/06/29 22:16:31 espie Exp $

COMMENT =	Rubik's cube simulator for KDE
DISTNAME =	kubrick-${MODKDE4_VERSION}
REVISION =	4

WANTLIB =  c m pthread GL GLU
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
