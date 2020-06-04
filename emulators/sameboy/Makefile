# $OpenBSD: Makefile,v 1.2 2020/06/04 07:50:07 bentley Exp $

COMMENT-main =		accurate Nintendo Game Boy emulator
COMMENT-libretro =	accurate Nintendo Game Boy core for retroarch

PKGNAME-main =		sameboy-$V
PKGNAME-libretro =	libretro-sameboy-$V

V =		0.13.1
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

BUILD_DEPENDS =		devel/rgbds
LIB_DEPENDS-main =	devel/sdl2

MAKE_FLAGS =		CC="${CC}" \
			DATA_DIR=${PREFIX}/share/sameboy/

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		sdl tester libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sameboy
	${INSTALL_DATA} \
		${WRKBUILD}/build/bin/SDL/LICENSE \
		${WRKBUILD}/build/bin/SDL/*.bin \
		${WRKBUILD}/build/bin/SDL/registers.sym \
		${WRKBUILD}/build/bin/SDL/background.bmp \
		${PREFIX}/share/sameboy
	${INSTALL_DATA_DIR} ${PREFIX}/share/sameboy/Shaders
	${INSTALL_DATA} ${WRKBUILD}/build/bin/SDL/Shaders/* \
		${PREFIX}/share/sameboy/Shaders
	${INSTALL_PROGRAM} ${WRKBUILD}/build/bin/SDL/sameboy \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKBUILD}/build/bin/sameboy_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
