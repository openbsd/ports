# $OpenBSD: Makefile,v 1.7 2013/12/08 19:13:33 zhuk Exp $

COMMENT =	KDE Nepomuk core libraries
DISTNAME =	nepomuk-core-${MODKDE4_VERSION}

DPB_PROPERTIES =	parallel

SHARED_LIBS =	nepomukcore		52.0 # 4.9
#SHARED_LIBS +=	nepomuksync		0.0 # 4.9
SHARED_LIBS +=	nepomukcommon		52.0 # 4.10
SHARED_LIBS +=	kdeinit4_nepomukserver	52.0 # 4.10
SHARED_LIBS +=	nepomukextractor	52.0
SHARED_LIBS +=	nepomukcleaner		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/solid
WANTLIB += avcodec avformat avutil epub exiv2 poppler-qt4 soprano
WANTLIB += sopranoserver tag

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/doxygen \
		misc/shared-desktop-ontologies>=0.10.51

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-desktop-ontologies>=0.10.51

LIB_DEPENDS =	audio/taglib \
		databases/soprano>=2.9.3 \
		graphics/exiv2 \
		graphics/ffmpeg \
		print/poppler,,-qt4 \
		textproc/ebook-tools

# turns on indexing, let user make decision, default=no by GNOME & KDE
#RUN_DEPENDS +=	databases/virtuoso

.include <bsd.port.mk>
