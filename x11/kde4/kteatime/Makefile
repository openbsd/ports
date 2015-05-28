# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:29 pascal Exp $

COMMENT =	simple timer tray app for KDE
DISTNAME =	kteatime-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/kteatime

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
