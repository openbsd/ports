# $OpenBSD: Makefile,v 1.2 2013/07/04 00:44:43 zhuk Exp $

COMMENT =	KDE digital camera support
DISTNAME =	kamera-${MODKDE4_VERSION}

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += exif gphoto2_port gphoto2

LIB_DEPENDS = 	graphics/libgphoto2

CONFIGURE_ARGS =	-DGPHOTO2_5:Bool=Yes

.include <bsd.port.mk>
