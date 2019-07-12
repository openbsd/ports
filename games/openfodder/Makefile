# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:22 sthen Exp $

COMMENT =	open source port of Cannon Fodder game
DISTNAME =	openfodder-1.4.1
CATEGORIES =	games x11

HOMEPAGE =	http://openfodder.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c m

# Upstream tarball is incomplete
MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# C++14
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/sdl2-mixer

# Upstream all routine shoves everything into these two variables.
MAKE_FLAGS =	CC="${CXX} ${CXXFLAGS} -c -std=c++14 -I./Source/ `sdl2-config --cflags`" \
		LD="${CXX} ${LDFLAGS} obj/*.o `sdl2-config --libs` -lSDL2_mixer"

NO_TEST =	Yes

# No upstream install routine.
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/OpenFodder
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/openfodder
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/openfodder
	${INSTALL_PROGRAM} ${WRKSRC}/Run/OpenFodder ${PREFIX}/share/OpenFodder
	cd ${WRKSRC}/Run && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/OpenFodder/{}" \;
	cd ${WRKSRC}/Run && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/OpenFodder/{}" \;
	${INSTALL_PROGRAM} ${WRKSRC}/Run/OpenFodder ${PREFIX}/share/OpenFodder
	${SUBST_CMD} -c -m 755 ${FILESDIR}/OpenFodder ${PREFIX}/bin/OpenFodder

.include <bsd.port.mk>
