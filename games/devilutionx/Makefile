# $OpenBSD: Makefile,v 1.4 2019/11/09 22:35:19 bcallah Exp $

COMMENT =	open source engine recreation for Diablo 1 game
DISTNAME =	devilutionx-0.5.0
CATEGORIES =	games x11

GH_ACCOUNT =	diasurgical
GH_PROJECT =	devilutionX
GH_COMMIT =	2afc5862a0762bdf1a2005249d5e34245815c595

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer SDL2_ttf c m pthread

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	security/libsodium

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-ttf

CONFIGURE_ARGS =	-DBINARY_RELEASE=ON \
			-DDEBUG=OFF

# Upstream CMake creates build lines that neither ninja,
# samurai, nor base make understand.
USE_GMAKE =	Yes
USE_NINJA =	No

NO_TEST =	Yes

# No install target
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/devilutionx ${PREFIX}/bin

.include <bsd.port.mk>
