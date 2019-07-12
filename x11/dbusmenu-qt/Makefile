# $OpenBSD: Makefile,v 1.13 2019/07/12 20:51:09 sthen Exp $

COMMENT =	D-Bus menu implementation for Qt
V =		0.9.3
DISTNAME =	libdbusmenu-qt_${V}+16.04.20160218
PKGNAME =	${PKGSTEM}-${V}
FULLPKGNAME =	${PKGNAME}
CATEGORIES =	x11 devel
HOMEPAGE =	https://launchpad.net/libdbusmenu-qt/
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>
REVISION =	4

SHARED_LIBS =	dbusmenu-qt	1.0 # 2.7
SHARED_LIBS +=	dbusmenu-qt5	1.0 # 2.7

# LGPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbusmenu-qt/
EXTRACT_SUFX =	.orig.tar.gz

MODULES =	devel/cmake
COMPILER =	base-clang ports-gcc

FLAVORS =	qt5
FLAVOR ?=

# XXX run update-plist with qt5 FLAVOR, or it'll go crazy

WANTLIB += ${COMPILER_LIBCXX}

.if ${FLAVOR:Mqt5}
MODULES +=	x11/qt5
WANTLIB +=	Qt5Core Qt5DBus Qt5Gui Qt5Widgets m
CONFIGURE_ARGS=	-DUSE_QT4=No -DUSE_QT5=Yes
PKGSTEM =	dbusmenu-qt5
.else
MODULES +=	x11/qt4
WANTLIB +=	QtDBus QtGui m
CONFIGURE_ARGS=	-DUSE_QT4=Yes -DUSE_QT5=No
PKGSTEM =	dbusmenu-qt
.endif

CONFIGURE_ARGS +=	-DWITH_DOC=OFF

BUILD_DEPENDS =	devel/qjson
TEST_DEPENDS =	devel/qjson

# XXX "!icon.isNull()" failed tests are normal, they do mean that
# mentioned icon is not installed; e.g., these are the test bugs.
TEST_TARGET =		check
TEST_IS_INTERACTIVE =	X11

WRKDIST =	${WRKDIR}/${DISTNAME:C/_/-/}

SUBST_VARS =	PKGSTEM

.include <bsd.port.mk>
