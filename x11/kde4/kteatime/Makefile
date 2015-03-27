# $OpenBSD: Makefile,v 1.3 2015/03/27 08:16:21 ajacoutot Exp $

COMMENT =	simple timer tray app for KDE
DISTNAME =	kteatime-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/kteatime

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
