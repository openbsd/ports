# $OpenBSD: Makefile,v 1.3 2013/08/24 17:33:35 zhuk Exp $

COMMENT =	KDE file archiver
DISTNAME =	ark-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kerfuffle	50.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/khtml ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kjs ${KDE4LIB}/konq ${KDE4LIB}/kparts ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += archive soprano

MODULES =	multimedia/phonon

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	archivers/libarchive \
		${MODKDE4_DEP_DIR}/baseapps

TEST_DEPENDS =	devel/qjson

.include <bsd.port.mk>
