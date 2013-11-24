# $OpenBSD: Makefile,v 1.3 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	printing management for KDE
DISTNAME =	print-manager-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kcupslib		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/plasma
WANTLIB += cups

LIB_DEPENDS =	print/cups,-libs

.include <bsd.port.mk>
