# $OpenBSD: Makefile,v 1.6 2018/06/27 21:04:18 espie Exp $

COMMENT =	simple timer tray app for KDE
DISTNAME =	kteatime-${MODKDE4_VERSION}
REVISION =	3

CATEGORIES =	productivity
HOMEPAGE =	http://projects.kde.org/projects/kde/kdetoys/kteatime

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knotifyconfig

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
