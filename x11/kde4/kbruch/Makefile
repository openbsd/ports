# $OpenBSD: Makefile,v 1.2 2013/08/24 17:33:40 zhuk Exp $

COMMENT =	KDE calculating fractions practicing app
DISTNAME =	kbruch-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
