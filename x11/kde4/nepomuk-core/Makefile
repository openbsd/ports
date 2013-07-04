# $OpenBSD: Makefile,v 1.3 2013/07/04 00:46:36 zhuk Exp $

COMMENT =	KDE Nepomuk core libraries
DISTNAME =	nepomuk-core-${MODKDE4_VERSION}

DPB_PROPERTIES =	parallel

SHARED_LIBS =	nepomukcore		51.0 # 4.9
#SHARED_LIBS +=	nepomuksync		0.0 # 4.9
SHARED_LIBS +=	nepomukcommon		51.0 # 4.10
SHARED_LIBS +=	kdeinit4_nepomukserver	51.0 # 4.10
SHARED_LIBS +=	nepomukextractor	51.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/solid
WANTLIB += avcodec avformat avutil exiv2 poppler-qt4 soprano sopranoclient
WANTLIB += sopranoserver tag

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/doxygen

LIB_DEPENDS =	audio/taglib \
		databases/soprano \
		graphics/exiv2 \
		graphics/ffmpeg \
		print/poppler,,-qt4

# turns on indexing, let user make decision, default=no by GNOME & KDE
#RUN_DEPENDS +=	databases/virtuoso

.include <bsd.port.mk>
