# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:28 pascal Exp $

COMMENT =	solitare games collection for KDE
DISTNAME =	kpat-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kcardgame	50.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3

MODULES =	multimedia/phonon
MODKDE4_USE =	games

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

.include <bsd.port.mk>
