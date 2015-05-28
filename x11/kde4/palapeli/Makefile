# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:30 pascal Exp $

COMMENT =	jigsaw puzzle game for KDE
DISTNAME =	palapeli-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	pala		51.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio

# Does not link to libkdegames but uses data from the latter package.
MODKDE4_USE =	games

# configure check for qvoronoi doesn't affect anything
RUN_DEPENDS =	devel/desktop-file-utils \
		math/qhull \
		misc/shared-mime-info \
		x11/gtk+3,-guic

.include <bsd.port.mk>
