# $OpenBSD: Makefile,v 1.2 2014/07/09 20:03:28 zhuk Exp $

COMMENT =	KDE screensaver of outer space with Tux
DISTNAME =	ktux-${MODKDE4_VERSION}

CATEGORIES =	games
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/ktux

WANTLIB =  c m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kscreensaver

MODKDE4_USE =	workspace

RUN_DEPENDS =	x11/gtk+2,-guic

.include <bsd.port.mk>
