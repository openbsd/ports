# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${MODKDE4_VERSION}

SHARED_LIBS =	kcddb		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += musicbrainz5

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/libmusicbrainz5

.include <bsd.port.mk>
