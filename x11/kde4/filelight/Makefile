# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:33:25 zhuk Exp $

COMMENT =	KDE graphical equivalent of du
DISTNAME =	filelight-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/solid
WANTLIB += soprano

.include <bsd.port.mk>
