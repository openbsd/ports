# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:13:25 zhuk Exp $

COMMENT =	simple timer tray app for KDE
DISTNAME =	kteatime-${MODKDE4_VERSION}

CATEGORIES =	productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/kteatime

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
