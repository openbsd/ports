# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:34 zhuk Exp $

COMMENT =	KDE tool for sweeping unwanted traces from system
DISTNAME =	sweeper-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
