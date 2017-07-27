# $OpenBSD: Makefile,v 1.5 2017/07/27 11:57:50 sthen Exp $

COMMENT =	KDE screensaver of outer space with Tux
DISTNAME =	ktux-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	games
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/ktux

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kscreensaver

MODKDE4_USE =	workspace

RUN_DEPENDS =	x11/gtk+3,-guic

.include <bsd.port.mk>
