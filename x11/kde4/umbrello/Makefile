# $OpenBSD: Makefile,v 1.2 2014/07/09 20:03:31 zhuk Exp $

COMMENT =	UML editor for KDE
DISTNAME =	umbrello-${MODKDE4_VERSION}

CATEGORIES =	devel productivity
#HOMEPAGE =	http://umbrello.kde.org/
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/umbrello

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB += xml2 xslt

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	textproc/libxml \
		textproc/libxslt

.include <bsd.port.mk>
