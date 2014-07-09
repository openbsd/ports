# $OpenBSD: Makefile,v 1.6 2014/07/09 20:03:30 zhuk Exp $

COMMENT =	jigsaw puzzle game for KDE
DISTNAME =	palapeli-${MODKDE4_VERSION}

SHARED_LIBS =	pala		51.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio

# Does not link to libkdegames but uses data from the latter package.
MODKDE4_USE =	games

LIB_DEPENDS =	math/qhull

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

.include <bsd.port.mk>
