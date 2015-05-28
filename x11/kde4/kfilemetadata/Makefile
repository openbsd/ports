# $OpenBSD: Makefile,v 1.3 2015/05/28 10:17:27 pascal Exp $

COMMENT =	file metadata extraction library for KDE
DISTNAME =	kfilemetadata-${MODKDE4_VERSION}
REVISION =	0

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
