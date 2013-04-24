# $OpenBSD: Makefile,v 1.11 2013/04/24 19:32:57 zhuk Exp $

COMMENT =	KDE graphics, styles and icon themes
DISTNAME =	kdeartwork-${MODKDE4_VERSION}

MODKDE4_USE =	workspace

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU ICE SM X11 Xext Xt
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdecorations ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/kscreensaver
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano

BUILD_DEPENDS =	math/eigen2

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
