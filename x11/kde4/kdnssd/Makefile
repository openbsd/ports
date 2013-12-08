# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:06:58 zhuk Exp $

COMMENT =	KDE monitoring of Zeroconf services
DISTNAME =	kdnssd-${MODKDE4_VERSION}

CATEGORIES =	network
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdnssd

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
