COMMENT-main =		accurate Nintendo Game Boy emulator
COMMENT-libretro =	accurate Nintendo Game Boy core for retroarch

PKGNAME-main =		sameboy-$V
PKGNAME-libretro =	libretro-sameboy-$V

V =		0.14.3

GH_ACCOUNT =	LIJI32
GH_PROJECT =	SameBoy
GH_TAGNAME =	v$V

MULTI_PACKAGES =	-main -libretro

.include <bsd.port.arch.mk>

CATEGORIES =	emulators

HOMEPAGE =	https://sameboy.github.io/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB-main += GL SDL2 c m
WANTLIB-libretro += m

# -std=gnu11
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/rgbds \
			devel/xdg-utils

# dlopens libgtk-3.so for file chooser
WANTLIB-main += gtk-3
LIB_DEPENDS-main =	devel/sdl2 \
			x11/gtk+3

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

MAKE_FLAGS =		CC="${CC}" \
			DATA_DIR=${PREFIX}/share/sameboy/
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		sdl tester libretro

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKBUILD}/build/bin/sameboy_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
