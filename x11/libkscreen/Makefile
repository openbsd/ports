# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:15 sthen Exp $

COMMENT =	KDE screen management software
CATEGORIES =	x11
VERSION =	1.0.4
DISTNAME =	libkscreen-${VERSION}
REVISION =	2

SHARED_LIBS =	kscreen		0.0

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 X11-xcb Xext Xrandr xcb xcb-randr
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += qjson

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/libkscreen/${VERSION}/src/}
DIST_SUBDIR =	kde

MODULES =	x11/kde4
MODKDE4_USE =	libs

LIB_DEPENDS =	devel/qjson

# allow tests to run
TEST_IS_INTERACTIVE =	X11
TEST_ENV =		QT_PLUGIN_PATH=${WRKBUILD}/lib
post-build:
	ln -sf . ${WRKBUILD}/lib/kscreen

.include <bsd.port.mk>
