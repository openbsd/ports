# $OpenBSD: Makefile,v 1.3 2015/03/27 08:16:22 ajacoutot Exp $

COMMENT =	KDE screensaver of outer space with Tux
DISTNAME =	ktux-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	games
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/ktux

WANTLIB =  c m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kscreensaver

MODKDE4_USE =	workspace

RUN_DEPENDS =	x11/gtk+3,-guic

.include <bsd.port.mk>
