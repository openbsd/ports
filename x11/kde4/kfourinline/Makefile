# $OpenBSD: Makefile,v 1.8 2015/05/28 10:17:27 pascal Exp $

COMMENT =	Connect-Four-like game for KDE
DISTNAME =	kfourinline-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdnssd ${KDE4LIB}/kdegamesprivate
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
