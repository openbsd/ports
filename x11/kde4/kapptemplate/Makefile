# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:04:27 zhuk Exp $

COMMENT =	app template generator for KDE development
DISTNAME =	kapptemplate-${MODKDE4_VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kapptemplate

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

BUILD_DEPENDS =	archivers/gtar
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
