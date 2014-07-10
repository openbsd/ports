# $OpenBSD: Makefile,v 1.6 2014/07/10 19:55:27 zhuk Exp $

COMMENT =	solitare games collection for KDE
DISTNAME =	kpat-${MODKDE4_VERSION}
REVISION =	0

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
		x11/gtk+2,-guic

.include <bsd.port.mk>
