# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:30 pascal Exp $

COMMENT =	KDE CDDB library
CATEGORIES =	audio net devel
DISTNAME =	libkcddb-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kcddb		50.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += musicbrainz5

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/libmusicbrainz5

.include <bsd.port.mk>
