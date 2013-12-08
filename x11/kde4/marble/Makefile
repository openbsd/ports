# $OpenBSD: Makefile,v 1.7 2013/12/08 19:13:33 zhuk Exp $

COMMENT =	world maps
DISTNAME =	marble-${MODKDE4_VERSION}

SHARED_LIBS =	marblewidget		51.0 # 0.12

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma
WANTLIB += gps quazip shp soprano

# TODO split non-KDE4 parts off

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

LIB_DEPENDS = 	archivers/quazip \
		devel/shapelib \
		misc/gpsd,-main

PATCHORIG =	.ports.orig

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QextSerialPort:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtLocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_liblocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate:Bool=TRUE \
			-DEXPERIMENTAL_PYTHON_BINDINGS:Bool=FALSE

post-extract:
	rm ${WRKSRC}/cmake/modules/FindPhonon.cmake

.include <bsd.port.mk>
