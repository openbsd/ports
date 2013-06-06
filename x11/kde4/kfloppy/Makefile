# $OpenBSD: Makefile,v 1.2 2013/06/06 08:36:47 zhuk Exp $

COMMENT =	graphical floppy format utility for KDE
DISTNAME =	kfloppy-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/Qt3Support lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kio

.include <bsd.port.mk>
