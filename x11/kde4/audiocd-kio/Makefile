# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:25 zhuk Exp $

COMMENT =	KDE KIOslave for accessing audio CDs
DISTNAME =	audiocd-kio-${MODKDE4_VERSION}

SHARED_LIBS =	audiocdplugins		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcddb ${KDE4LIB}/kcompactdisc ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio
WANTLIB += FLAC cdda_interface cdda_paranoia ogg vorbis vorbisenc
WANTLIB += vorbisfile

LIB_DEPENDS =	audio/cdparanoia \
		audio/flac \
		audio/libvorbis \
		${MODKDE4_DEP_DIR}/libkcddb>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/libkcompactdisc>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
