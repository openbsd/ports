# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:19:19 zhuk Exp $

COMMENT =	graphical timer based task execution for KDE
DISTNAME =	ktimer-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

.include <bsd.port.mk>
