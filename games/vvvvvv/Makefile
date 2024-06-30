# BE not supported at the moment, see GitHub PR #461.
# Severe display artifacts reported on powerpc
NOT_FOR_ARCHS=${BE_ARCHS}

COMMENT =	gravity-reversing platforming game
V =		2.3.4
PKGNAME =	vvvvvv-${V}
GH_ACCOUNT =	TerryCavanagh
GH_PROJECT =	VVVVVV
GH_TAGNAME =	${V}
CATEGORIES =	games x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# custom zlib-based license, non-commercial
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c m

# C++ (uses C++11 extension 'long long')
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
LIB_DEPENDS =	devel/sdl2-mixer

NO_TEST =	Yes
WRKSRC =	${WRKDIST}/desktop_version

do-install:
	${INSTALL_PROGRAM}	${WRKBUILD}/VVVVVV ${PREFIX}/bin/
	${INSTALL_DATA_DIR}	${PREFIX}/share/vvvvvv
	${INSTALL_DATA}		${WRKDIST}/LICENSE.md ${PREFIX}/share/vvvvvv/

.include <bsd.port.mk>
