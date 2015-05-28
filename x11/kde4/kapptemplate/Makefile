# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:27 pascal Exp $

COMMENT =	app template generator for KDE development
DISTNAME =	kapptemplate-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kapptemplate

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

BUILD_DEPENDS =	archivers/gtar
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
