# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:27 zhuk Exp $

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += musicbrainz3

MODULES =	multimedia/phonon

LIB_DEPENDS =	audio/libmusicbrainz

.include <bsd.port.mk>
