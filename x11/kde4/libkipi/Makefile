# $OpenBSD: Makefile,v 1.5 2013/12/08 19:13:32 zhuk Exp $

COMMENT =	KDE image plugins infrastructure
CATEGORIES =	graphics devel
DISTNAME =	libkipi-${MODKDE4_VERSION}

SHARED_LIBS =	kipi		50.1

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

MODKDE4_USE =	libs

RUN_DEPENDS =	graphics/libkipi,-icons \
		x11/gtk+2,-guic

post-patch:
	cd ${WRKSRC}; \
	perl -pi -e '$$.==1 and $$_ = "/*\n"' tests/kipitestmainwindow.cpp

.include <bsd.port.mk>
