# $OpenBSD: Makefile,v 1.3 2017/07/27 11:57:49 sthen Exp $

COMMENT =	QtQuick plugin to render interactive charts
DISTNAME =	kqtquickcharts-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	graphics
HOMEPAGE =	https://projects.kde.org/projects/kde/kdeedu/kqtquickcharts

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/plasma

MODKDE4_USE =	libs

.include <bsd.port.mk>
