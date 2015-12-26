# $OpenBSD: Makefile,v 1.3 2015/12/26 22:39:21 zhuk Exp $

COMMENT =		library for mapping photos on maps for KDE
DISTNAME =		libkgeomap-${VERSION}

SHARED_LIBS =		kgeomap		0.1

CATEGORIES =		geo graphics net
HOMEPAGE =		https://projects.kde.org/projects/kde/kdegraphics/libs/libkgeomap

WANTLIB =  c m pthread
WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2 ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/marblewidget
WANTLIB += soprano

LIB_DEPENDS =		${MODKDE4_DEP_DIR}/libkexiv2 \
			${MODKDE4_DEP_DIR}/marble

MODULES =		multimedia/phonon devel/gettext
MODKDE4_USE =		libs

# neede by kgeomap_test_itemmarkertiler
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
