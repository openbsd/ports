# $OpenBSD: Makefile,v 1.7 2018/06/27 21:03:53 espie Exp $

COMMENT =	collaborative drawing program
DISTNAME =	drawpile-2.0.10
CATEGORIES =	graphics x11
REVISION =	0

HOMEPAGE =	https://drawpile.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5DNSSD Qt5Core Qt5Gui
WANTLIB += Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets c
WANTLIB += gif m microhttpd miniupnpc sodium

MASTER_SITES =	https://drawpile.net/files/src/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kdnssd \
		graphics/giflib \
		net/miniupnp/miniupnpc \
		security/libsodium \
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
