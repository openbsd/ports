# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE Nepomuk core libraries
DISTNAME =	nepomuk-core-${MODKDE4_VERSION}

SHARED_LIBS =	nepomukcore		50.0 # 4.9
#SHARED_LIBS +=	nepomuksync		0.0 # 4.9
SHARED_LIBS +=	nepomukcommon		50.0 # 4.10
SHARED_LIBS +=	kdeinit4_nepomukserver	50.0 # 4.10
SHARED_LIBS +=	nepomukextractor	50.0

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
