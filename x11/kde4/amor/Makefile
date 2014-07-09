# $OpenBSD: Makefile,v 1.2 2014/07/09 20:03:22 zhuk Exp $

COMMENT =	fun desktop animation
DISTNAME =	amor-${MODKDE4_VERSION}

CATEGORIES =	games
#HOMEPAGE =	http://amor.kde.org/
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/amor

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
