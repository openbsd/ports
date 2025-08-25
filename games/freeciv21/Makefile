COMMENT =	turn-based, empire-building 4x strategy game

V =		3.1.0
# libertinus version taken from cmake/FreecivInstall.cmake
LIBERTINUS =	7.040

DISTNAME =	Freeciv21-v${V}
PKGNAME =	freeciv21-${V:S/-patch./pl/:S/-rc./rc/}
REVISION =	0
CATEGORIES =	games

HOMEPAGE =	https://github.com/longturn/freeciv21
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3+ (freeciv21), OFL-1.1 (Libertinus font)
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} KF5Archive Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Svg Qt5Widgets SDL2 SDL2_mixer
WANTLIB += c intl m readline sqlite3 z

SITES =		https://github.com/longturn/freeciv21/releases/download/v${V}/
EXTRACT_SUFX =	.zip

SITES.font =	https://github.com/alerque/libertinus/releases/download/v${LIBERTINUS}/
DISTFILES.font = Libertinus-${LIBERTINUS}${EXTRACT_SUFX}

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/lua \
		lang/python

MODLUA_VERSION = 5.3

BUILD_DEPENDS =	devel/gettext,-tools \
		textproc/py-sphinx
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	devel/kf5/karchive \
		devel/sdl2-mixer \
		x11/qt5/qtbase,-main \
		x11/qt5/qtsvg,-main

CONFIGURE_ARGS = -DCMAKE_INSTALL_PREFIX=${PREFIX} \
		-DFREECIV_DOWNLOAD_FONTS=OFF \
		-DQt5_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5/ \
		-DQt5Test_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5Test

CXXFLAGS +=	-I${X11BASE}/include
WRKDIST =	${WRKDIR}/freeciv21

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/freeciv21/fonts
	${INSTALL_DATA} ${WRKDIR}/Libertinus-${LIBERTINUS}/static/OTF/*.otf \
		${PREFIX}/share/freeciv21/fonts/

.include <bsd.port.mk>
