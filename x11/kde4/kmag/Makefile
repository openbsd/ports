# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:31 zhuk Exp $

COMMENT =	KDE screen magnifier
DISTNAME =	kmag-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

# Not ported (no upstream releases found, ever)
CONFIGURE_ARGS =	-DWITH_QAccessibilityClient:Bool=No

.include <bsd.port.mk>
