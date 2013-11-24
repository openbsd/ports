# $OpenBSD: Makefile,v 1.5 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kcddb		50.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += musicbrainz5

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/libmusicbrainz5

.include <bsd.port.mk>
