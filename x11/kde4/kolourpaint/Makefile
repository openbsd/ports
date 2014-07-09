# $OpenBSD: Makefile,v 1.5 2014/07/09 20:03:26 zhuk Exp $

COMMENT =	KDE raster image editor
DISTNAME =	kolourpaint-${MODKDE4_VERSION}

SHARED_LIBS =	kolourpaint_lgpl	51.0	# 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kutils
WANTLIB += qimageblitz

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	graphics/qimageblitz

.include <bsd.port.mk>
