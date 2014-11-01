# $OpenBSD: Makefile,v 1.2 2014/11/01 21:09:42 zhuk Exp $

COMMENT =	file metadata extraction library for KDE
DISTNAME =	kfilemetadata-${MODKDE4_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	https://projects.kde.org/projects/kde/kdelibs/kfilemetadata

SHARED_LIBS =	kfilemetadata		1.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += avcodec avformat avutil epub exiv2 poppler-qt4 tag

MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QMobipocket=True

LIB_DEPENDS =	audio/taglib \
		graphics/exiv2 \
		graphics/ffmpeg \
		print/poppler,,-qt4 \
		textproc/ebook-tools

.include <bsd.port.mk>
