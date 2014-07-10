# $OpenBSD: Makefile,v 1.7 2014/07/10 19:55:27 zhuk Exp $

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += musicbrainz3

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/libmusicbrainz

.include <bsd.port.mk>
