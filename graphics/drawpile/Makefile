# $OpenBSD: Makefile,v 1.13 2019/03/15 14:53:43 bcallah Exp $

COMMENT =	collaborative drawing program
DISTNAME =	drawpile-2.1.2
CATEGORIES =	graphics x11

HOMEPAGE =	https://drawpile.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5DNSSD Qt5Core Qt5Gui
WANTLIB += Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets c
WANTLIB += gif m microhttpd miniupnpc sodium vpx

MASTER_SITES =	https://drawpile.net/files/src/

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kdnssd \
		graphics/giflib \
		multimedia/libvpx \
		net/miniupnp/miniupnpc \
		security/libsodium \
		www/libmicrohttpd \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
