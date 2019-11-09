# $OpenBSD: Makefile,v 1.23 2019/11/09 19:05:37 bcallah Exp $

COMMENT =	collaborative drawing program
DISTNAME =	drawpile-2.1.13
CATEGORIES =	graphics x11

HOMEPAGE =	https://drawpile.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Override kf5.port.mk
EXTRACT_SUFX =	.tar.gz

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5DNSSD Qt5Core Qt5Gui
WANTLIB += Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets c
WANTLIB += gif m microhttpd miniupnpc sodium vpx

MASTER_SITES =	https://drawpile.net/files/src/

MODULES =	devel/cmake \
		devel/kf5

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
