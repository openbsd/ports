# $OpenBSD: Makefile,v 1.3 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	KDE MPlayer-based thumbnail generator for video files
DISTNAME =	mplayerthumbs-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	multimedia

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	x11/mplayer

.include <bsd.port.mk>
