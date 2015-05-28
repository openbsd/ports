# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:25 pascal Exp $

COMMENT =	fun desktop animation
DISTNAME =	amor-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	games
#HOMEPAGE =	http://amor.kde.org/
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/amor

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
