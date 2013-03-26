# $OpenBSD: Makefile,v 1.2 2013/03/26 14:31:28 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	D-Bus menu implementation for Qt
V =		0.9.2
DISTNAME =	libdbusmenu-qt-${V}
PKGNAME =	dbusmenu-qt-${V}
CATEGORIES =	x11 devel
HOMEPAGE =	https://launchpad.net/libdbusmenu-qt/

SHARED_LIBS =	dbusmenu-qt	0.0 # 2.6
EXTRACT_SUFX =	.tar.bz2

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}trunk/${V}/+download/

MODULES =	devel/cmake x11/qt4
WANTLIB =	lib/qt4/QtDBus lib/qt4/QtGui m stdc++
BUILD_DEPENDS =	devel/qjson \
		devel/doxygen
TEST_DEPENDS =	devel/qjson

# XXX "!icon.isNull()" failed tests are normal, they do mean that
# mentioned icon is not installed; e.g., these are the test bugs.
TEST_TARGET =		check
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
