# $OpenBSD: Makefile,v 1.7 2014/07/10 19:55:27 zhuk Exp $

COMMENT =	KDE file archiver
DISTNAME =	ark-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kerfuffle	51.0 # 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/khtml ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kjs ${KDE4LIB}/konq ${KDE4LIB}/kparts ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += archive soprano

MODULES =	multimedia/phonon

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/qjson

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	archivers/libarchive \
		${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

TEST_DEPENDS =	devel/qjson

.include <bsd.port.mk>
