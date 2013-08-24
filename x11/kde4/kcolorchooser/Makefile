# $OpenBSD: Makefile,v 1.2 2013/08/24 17:33:41 zhuk Exp $

COMMENT =	simple application to select color for KDE
DISTNAME =	kcolorchooser-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
