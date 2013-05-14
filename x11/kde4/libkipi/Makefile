# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE image plugins infrastructure
DISTNAME =	libkipi-${MODKDE4_VERSION}

SHARED_LIBS =	kipi		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

MODKDE4_USE =	libs

post-patch:
	cd ${WRKSRC}; \
	perl -pi -e '$$.==1 and $$_ = "/*\n"' tests/kipitestmainwindow.cpp

.include <bsd.port.mk>
