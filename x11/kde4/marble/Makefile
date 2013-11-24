# $OpenBSD: Makefile,v 1.6 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	world maps
DISTNAME =	marble-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	marblewidget		50.0 # 0.12

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma
WANTLIB += gps shp soprano

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

LIB_DEPENDS = 	devel/shapelib \
		misc/gpsd,-main

PATCHORIG =	.ports.orig

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QextSerialPort:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtLocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_liblocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate:Bool=TRUE \
			-DEXPERIMENTAL_PYTHON_BINDINGS:Bool=FALSE

.include <bsd.port.mk>
