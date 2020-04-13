# $OpenBSD: Makefile,v 1.40 2020/04/13 02:53:05 bentley Exp $

COMMENT-main =		Game Boy Color/Advance emulator
COMMENT-qt =		Game Boy Color/Advance emulator with GUI
COMMENT-libretro =	Game Boy Color/Advance core for retroarch

V =			0.8.1
GH_ACCOUNT =		mgba-emu
GH_PROJECT =		mgba
GH_TAGNAME =		$V
PKGNAME-main =		mgba-$V
PKGNAME-qt =		mgba-qt-$V
PKGNAME-libretro =	libretro-mgba-$V

MULTI_PACKAGES =	-main -qt -libretro
DEBUG_PACKAGES =	-main -qt -libretro

.include <bsd.port.arch.mk>

SHARED_LIBS +=  mgba                      1.0 # 0.1

CATEGORIES =		emulators

HOMEPAGE =		https://mgba.io/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# MPL 2.0
PERMIT_PACKAGE =	Yes

cWANTLIB =		GL GLU MagickCore-6.Q16 MagickWand-6.Q16 SDL2 \
			avcodec avformat avutil c curses edit m png \
			pthread sqlite3 swresample swscale z zip elf \
			avresample
WANTLIB-main =		${cWANTLIB}
WANTLIB-qt =		${cWANTLIB} mgba Qt5Core Qt5Gui Qt5Multimedia \
			Qt5Network Qt5OpenGL Qt5Widgets ${COMPILER_LIBCXX}
WANTLIB-libretro =	m pthread z

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc
LIB_DEPENDS-main =	archivers/libzip \
			graphics/ImageMagick \
			graphics/ffmpeg \
			devel/sdl2
LIB_DEPENDS-qt =	${LIB_DEPENDS-main} \
			${MODQT_LIB_DEPENDS} \
			emulators/mgba,-main \
			x11/qt5/qtmultimedia
LIB_DEPENDS-libretro =
RUN_DEPENDS-qt =	devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DBUILD_LIBRETRO=ON \
			-DUSE_PLEDGE_UNVEIL=ON

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt5
.endif

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	mv ${PREFIX}/lib/mgba_libretro.so ${PREFIX}/lib/libretro

.include <bsd.port.mk>
