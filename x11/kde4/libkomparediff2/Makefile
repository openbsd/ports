# $OpenBSD: Makefile,v 1.2 2015/05/28 10:17:30 pascal Exp $

COMMENT =	patch tools library for KDE
DISTNAME =	libkomparediff2-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kompare

SHARED_LIBS =	komparediff2		52.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
