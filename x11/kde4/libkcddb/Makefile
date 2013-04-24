# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:24:21 zhuk Exp $

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${MODKDE4_VERSION}

SHARED_LIBS =	kcddb		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += musicbrainz5

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/libmusicbrainz5

.include <bsd.port.mk>
