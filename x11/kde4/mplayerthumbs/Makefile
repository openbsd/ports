# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:30 pascal Exp $

COMMENT =	KDE MPlayer-based thumbnail generator for video files
DISTNAME =	mplayerthumbs-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	multimedia

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	x11/mplayer

.include <bsd.port.mk>
