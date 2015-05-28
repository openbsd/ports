# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:29 pascal Exp $

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += musicbrainz3

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/libmusicbrainz

.include <bsd.port.mk>
