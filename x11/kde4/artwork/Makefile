# $OpenBSD: Makefile,v 1.14 2013/08/24 17:33:35 zhuk Exp $

COMMENT =	KDE graphics, styles and icon themes
DISTNAME =	kdeartwork-${MODKDE4_VERSION}
REVISION =	0

MODKDE4_USE =	workspace

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU ICE SM X11 Xext Xt
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdecorations ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/kscreensaver
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

BUILD_DEPENDS =	math/eigen2 \
		x11/xscreensaver

RUN_DEPENDS =	x11/gtk+2,-guic \
		x11/xscreensaver

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
