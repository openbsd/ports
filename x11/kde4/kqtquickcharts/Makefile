# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 19:50:51 zhuk Exp $

COMMENT =	QtQuick plugin to render interactive charts
DISTNAME =	kqtquickcharts-${MODKDE4_VERSION}

CATEGORIES =	graphics
HOMEPAGE =	https://projects.kde.org/projects/kde/kdeedu/kqtquickcharts

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/plasma

MODKDE4_USE =	libs

.include <bsd.port.mk>
