# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:28 pascal Exp $

COMMENT =	mini-golf simulator game for KDE
DISTNAME =	kolf-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kolfprivate		50.0  # 4.10

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
