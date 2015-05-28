# $OpenBSD: Makefile,v 1.2 2015/05/28 10:17:29 pascal Exp $

COMMENT =	QtQuick plugin to render interactive charts
DISTNAME =	kqtquickcharts-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	graphics
HOMEPAGE =	https://projects.kde.org/projects/kde/kdeedu/kqtquickcharts

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/plasma

MODKDE4_USE =	libs

.include <bsd.port.mk>
