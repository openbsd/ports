# $OpenBSD: Makefile,v 1.4 2014/07/09 20:03:31 zhuk Exp $

COMMENT =	KDE tool for sweeping unwanted traces from system
DISTNAME =	sweeper-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
