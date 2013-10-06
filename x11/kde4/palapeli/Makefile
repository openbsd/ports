# $OpenBSD: Makefile,v 1.3 2013/10/06 18:53:15 zhuk Exp $

COMMENT =	jigsaw puzzle game for KDE
DISTNAME =	palapeli-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	pala		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

.include <bsd.port.mk>
