# $OpenBSD: Makefile,v 1.15 2020/08/20 16:40:47 rsadowski Exp $

COMMENT =	D-Bus menu implementation for Qt
V =		0.9.3
DISTNAME =	libdbusmenu-qt_${V}+16.04.20160218
PKGNAME =	dbusmenu-qt5-${V}
CATEGORIES =	x11 devel
HOMEPAGE =	https://launchpad.net/libdbusmenu-qt/
REVISION =	6

SHARED_LIBS +=	dbusmenu-qt5	1.0 # 2.7

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += m

MASTER_SITES =	http://archive.ubuntu.com/ubuntu/pool/main/libd/libdbusmenu-qt/
EXTRACT_SUFX =	.orig.tar.gz

MODULES =	devel/cmake \
		x11/qt5

CONFIGURE_ARGS=	-DUSE_QT4=OFF \
		-DUSE_QT5=ON \
		-DWITH_DOC=OFF \
		-DCMAKE_DISABLE_FIND_PACKAGE_QJSON=ON


# XXX "!icon.isNull()" failed tests are normal, they do mean that
# mentioned icon is not installed; e.g., these are the test bugs.
TEST_TARGET =		check
TEST_IS_INTERACTIVE =	X11

WRKDIST =	${WRKDIR}/${DISTNAME:C/_/-/}

.include <bsd.port.mk>
