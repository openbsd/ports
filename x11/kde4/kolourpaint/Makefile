# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:28 pascal Exp $

COMMENT =	KDE raster image editor
DISTNAME =	kolourpaint-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kolourpaint_lgpl	51.0	# 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kutils
WANTLIB += qimageblitz

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS = 	graphics/qimageblitz

.include <bsd.port.mk>
