# $OpenBSD: Makefile,v 1.6 2013/12/25 14:12:54 zhuk Exp $

COMMENT =	KDE exiv2 wrapper
CATEGORIES =	graphics devel
DISTNAME =	libkexiv2-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kexiv2			50.0	# 10.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += exiv2

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/exiv2>=0.22

post-extract:
	cp ${FILESDIR}/Kexiv2Config.cmake.in ${WRKDIST}/

.include <bsd.port.mk>
