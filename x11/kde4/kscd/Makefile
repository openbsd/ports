# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:26:46 zhuk Exp $

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcddb ${KDE4LIB}/kcompactdisc ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += musicbrainz3

MODULES =	multimedia/phonon

LIB_DEPENDS =	audio/libmusicbrainz \
		${MODKDE4_DEP_DIR}/libkcddb>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/libkcompactdisc>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
