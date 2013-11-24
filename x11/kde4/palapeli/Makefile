# $OpenBSD: Makefile,v 1.4 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	jigsaw puzzle game for KDE
DISTNAME =	palapeli-${MODKDE4_VERSION}
REVISION =	1

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
