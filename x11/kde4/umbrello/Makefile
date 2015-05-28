# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:31 pascal Exp $

COMMENT =	UML editor for KDE
DISTNAME =	umbrello-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	devel productivity
HOMEPAGE =	http://umbrello.kde.org/

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += soprano xml2 xslt

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	textproc/libxml \
		textproc/libxslt

.include <bsd.port.mk>
