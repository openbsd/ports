# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 19:54:11 zhuk Exp $

COMMENT =	KDE monitoring of Zeroconf services
DISTNAME =	zeroconf-ioslave-${MODKDE4_VERSION}

CATEGORIES =	network
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/zeroconf-ioslave

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
