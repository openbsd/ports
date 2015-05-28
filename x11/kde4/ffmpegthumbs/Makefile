# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:26 pascal Exp $

COMMENT =	KDE FFmpeg-based thumbnail generator for video files
CATEGORIES =	multimedia
DISTNAME =	ffmpegthumbs-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += avcodec avformat avutil swscale

RUN_DEPENDS =	graphics/ffmpeg

.include <bsd.port.mk>
