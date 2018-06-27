# $OpenBSD: Makefile,v 1.9 2018/06/27 21:04:15 espie Exp $

COMMENT =	simple application to select color for KDE
DISTNAME =	kcolorchooser-${MODKDE4_VERSION}
REVISION =	3

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
