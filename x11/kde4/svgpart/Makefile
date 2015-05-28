# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:31 pascal Exp $

COMMENT =	KDE KPart for viewing SVG
DISTNAME =	svgpart-${MODKDE4_VERSION}
CATEGORIES =	graphics
REVISION =	0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

.include <bsd.port.mk>
