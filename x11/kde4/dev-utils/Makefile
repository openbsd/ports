# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:02:49 zhuk Exp $

COMMENT =	KDE development helper utilities
DISTNAME =	kde-dev-utils-${MODKDE4_VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kde-dev-utils

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDesigner lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

BUILD_DEPENDS =	devel/libtool,-ltdl

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/libtool,-ltdl \
		x11/gtk+2,-guic

.include <bsd.port.mk>
