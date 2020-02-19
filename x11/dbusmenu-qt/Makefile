# $OpenBSD: Makefile,v 1.14 2020/02/19 05:58:26 rsadowski Exp $

COMMENT =	D-Bus menu implementation for Qt
V =		0.9.3
DISTNAME =	libdbusmenu-qt_${V}+16.04.20160218
PKGNAME =	${PKGSTEM}-${V}
FULLPKGNAME =	${PKGNAME}
CATEGORIES =	x11 devel
HOMEPAGE =	https://launchpad.net/libdbusmenu-qt/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>
REVISION =	5

SHARED_LIBS =	dbusmenu-qt	1.0 # 2.7
SHARED_LIBS +=	dbusmenu-qt5	1.0 # 2.7

# LGPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbusmenu-qt/
EXTRACT_SUFX =	.orig.tar.gz

MODULES =	devel/cmake

FLAVORS =	qt5
FLAVOR ?=

# XXX run update-plist with qt5 FLAVOR, or it'll go crazy

WANTLIB += ${COMPILER_LIBCXX}

.if ${FLAVOR:Mqt5}
MODULES +=	x11/qt5
WANTLIB +=	Qt5Core Qt5DBus Qt5Gui Qt5Widgets m
CONFIGURE_ARGS=	-DUSE_QT4=OFF \
		-DUSE_QT5=ON \
		-DCMAKE_DISABLE_FIND_PACKAGE_QJSON=ON
PKGSTEM =	dbusmenu-qt5
.else
MODULES +=	x11/qt4
COMPILER =	base-clang ports-gcc
WANTLIB +=	QtDBus QtGui m
CONFIGURE_ARGS=	-DUSE_QT4=Yes -DUSE_QT5=No
PKGSTEM =	dbusmenu-qt
BUILD_DEPENDS =	devel/qjson
TEST_DEPENDS =	devel/qjson
.endif

CONFIGURE_ARGS +=	-DWITH_DOC=OFF

# XXX "!icon.isNull()" failed tests are normal, they do mean that
# mentioned icon is not installed; e.g., these are the test bugs.
TEST_TARGET =		check
TEST_IS_INTERACTIVE =	X11

WRKDIST =	${WRKDIR}/${DISTNAME:C/_/-/}

SUBST_VARS =	PKGSTEM

.include <bsd.port.mk>
