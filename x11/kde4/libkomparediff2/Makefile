# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 19:53:18 zhuk Exp $

COMMENT =	patch tools library for KDE
DISTNAME =	libkomparediff2-${MODKDE4_VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kompare

SHARED_LIBS =	komparediff2		52.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
