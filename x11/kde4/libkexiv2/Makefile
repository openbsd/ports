# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE exiv2 wrapper
DISTNAME =	libkexiv2-${MODKDE4_VERSION}

SHARED_LIBS =	kexiv2			50.0	# 10.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += exiv2

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/exiv2>=0.22

.include <bsd.port.mk>
