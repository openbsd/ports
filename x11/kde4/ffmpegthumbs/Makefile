# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:25 zhuk Exp $

COMMENT =	KDE FFmpeg-based thumbnail generator for video files
CATEGORIES =	multimedia
DISTNAME =	ffmpegthumbs-${MODKDE4_VERSION}

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += avcodec avformat avutil swscale

RUN_DEPENDS =	graphics/ffmpeg

.include <bsd.port.mk>
