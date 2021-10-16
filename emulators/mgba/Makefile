# $OpenBSD: Makefile,v 1.44 2021/10/16 08:51:35 bentley Exp $

COMMENT-main =		Game Boy Color/Advance emulator
COMMENT-qt =		Game Boy Color/Advance emulator with GUI
COMMENT-libretro =	Game Boy Color/Advance core for retroarch

V =			0.9.2
GH_ACCOUNT =		mgba-emu
GH_PROJECT =		mgba
GH_TAGNAME =		$V
PKGNAME-main =		mgba-$V
PKGNAME-qt =		mgba-qt-$V
PKGNAME-libretro =	libretro-mgba-$V

MULTI_PACKAGES =	-main -qt -libretro
DEBUG_PACKAGES =	-main -qt -libretro

.include <bsd.port.arch.mk>

SHARED_LIBS +=  mgba                      2.0 # 0.1

CATEGORIES =		emulators

HOMEPAGE =		https://mgba.io/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# MPL 2.0
PERMIT_PACKAGE =	Yes

cWANTLIB =		GL SDL2 avfilter \
			avcodec avformat avutil c curses edit m png \
			pthread sqlite3 swresample swscale z zip elf
WANTLIB-main =		${cWANTLIB}
WANTLIB-qt =		${cWANTLIB} mgba Qt5Core Qt5Gui Qt5Multimedia \
			Qt5Network Qt5Widgets ${COMPILER_LIBCXX}
WANTLIB-libretro =	m pthread z

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc
LIB_DEPENDS-main =	archivers/libzip \
			databases/sqlite3 \
			graphics/ffmpeg \
			graphics/png \
			devel/sdl2
LIB_DEPENDS-qt =	${LIB_DEPENDS-main} \
			${MODQT_LIB_DEPENDS} \
			emulators/mgba,-main \
			x11/qt5/qtmultimedia
LIB_DEPENDS-libretro =
RUN_DEPENDS-qt =	devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DBUILD_LIBRETRO=ON \
			-DUSE_PLEDGE_UNVEIL=ON \
			-DUSE_MINIZIP=OFF

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt5
.endif

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	mv ${PREFIX}/lib/mgba_libretro.so ${PREFIX}/lib/libretro

.include <bsd.port.mk>
