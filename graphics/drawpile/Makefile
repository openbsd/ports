# $OpenBSD: Makefile,v 1.2 2018/01/23 05:57:53 bcallah Exp $

COMMENT =	collaborative drawing program
DISTNAME =	drawpile-2.0.6
CATEGORIES =	graphics x11

HOMEPAGE =	https://drawpile.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5DNSSD Qt5Core Qt5Gui
WANTLIB += Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets c
WANTLIB += gif m microhttpd miniupnpc

MASTER_SITES =	https://drawpile.net/files/src/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kdnssd \
		graphics/giflib \
		net/miniupnp/miniupnpc \
		www/libmicrohttpd \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

NO_TEST =	Yes

# Install .desktop and icon files (CMake does it wrong)
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/drawpile.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/256x256/apps
	${INSTALL_DATA} ${WRKSRC}/desktop/drawpile-256x256.png \
		${PREFIX}/share/icons/hicolor/256x256/apps

.include <bsd.port.mk>
