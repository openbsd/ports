# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:10:11 zhuk Exp $

COMMENT =	KDE screen magnifier
DISTNAME =	kmag-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

CONFIGURE_ARGS =	-DWITH_QAccessibilityClient:Bool=No

.include <bsd.port.mk>
