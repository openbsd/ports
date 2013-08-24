# $OpenBSD: Makefile,v 1.3 2013/08/24 17:33:48 zhuk Exp $

COMMENT =	KDE image plugins infrastructure
DISTNAME =	libkipi-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kipi		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+2,-guic

post-patch:
	cd ${WRKSRC}; \
	perl -pi -e '$$.==1 and $$_ = "/*\n"' tests/kipitestmainwindow.cpp

.include <bsd.port.mk>
