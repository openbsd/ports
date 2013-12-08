# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:34 zhuk Exp $

COMMENT =	printing management for KDE
DISTNAME =	print-manager-${MODKDE4_VERSION}

SHARED_LIBS =	kcupslib		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/plasma
WANTLIB += cups

LIB_DEPENDS =	print/cups,-libs

.include <bsd.port.mk>
