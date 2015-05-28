# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:27 pascal Exp $

COMMENT =	KDE digital camera support
DISTNAME =	kamera-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += exif gphoto2_port gphoto2

LIB_DEPENDS = 	graphics/libgphoto2

.include <bsd.port.mk>
