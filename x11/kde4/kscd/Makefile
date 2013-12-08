# $OpenBSD: Makefile,v 1.5 2013/12/08 19:13:31 zhuk Exp $

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += musicbrainz3

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/libmusicbrainz

.include <bsd.port.mk>
