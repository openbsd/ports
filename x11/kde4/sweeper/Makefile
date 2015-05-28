# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:31 pascal Exp $

COMMENT =	KDE tool for sweeping unwanted traces from system
DISTNAME =	sweeper-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
