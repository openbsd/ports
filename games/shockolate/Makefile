COMMENT =	source port of 3D game System Shock

V =		0.7.8pl20210504
DISTNAME =	shockolate-v${V}
PKGNAME =	shockolate-${V}
GH_ACCOUNT =	Interrupt
GH_PROJECT =	systemshock
GH_COMMIT =	bcdb119b0c1b2e17820abf0fbe594378da603fd5

CATEGORIES =	games x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 SDL2_mixer c curses
WANTLIB += fluidsynth m readline

# C++11
COMPILER =	base-clang ports-gcc
MODULES =	devel/cmake
LIB_DEPENDS =	audio/fluidsynth \
		devel/sdl2-mixer
CONFIGURE_ARGS =	-DENABLE_FLUIDSYNTH=ON \
			-DENABLE_SDL2=ON \
			-DENABLE_SOUND=ON
CONFIGURE_ENV =		SDL2_DIR=${LOCALBASE}
NO_TEST =		Yes

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/share/shockolate
	${INSTALL_PROGRAM} ${WRKBUILD}/systemshock ${PREFIX}/share/shockolate/
	${INSTALL_DATA_DIR} ${PREFIX}/share/shockolate/shaders
	${INSTALL_DATA} ${WRKSRC}/shaders/* \
		${PREFIX}/share/shockolate/shaders/
	${SUBST_CMD} -c -m 755 ${FILESDIR}/systemshock.sh \
		${PREFIX}/bin/systemshock

.include <bsd.port.mk>
