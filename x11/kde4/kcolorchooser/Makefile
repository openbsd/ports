# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:30 zhuk Exp $

COMMENT =	simple application to select color for KDE
DISTNAME =	kcolorchooser-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
