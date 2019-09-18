# $OpenBSD: Makefile,v 1.2 2019/09/18 13:32:16 bcallah Exp $

COMMENT =	open source engine recreation for Diablo 1 game
DISTNAME =	devilutionx-0.4.0pl20190914
CATEGORIES =	games x11

GH_ACCOUNT =	diasurgical
GH_PROJECT =	devilutionX
GH_COMMIT =	c52464d2278660cbfe6c23ea48d31d82882d205b

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer SDL2_ttf c m pthread

MODULES =	devel/cmake

BUILD_DEPENDS =	security/libsodium

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-ttf

CONFIGURE_ARGS =	-DBINARY_RELEASE=ON \
			-DDEBUG=OFF

NO_TEST =	Yes

# No install target
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/devilutionx ${PREFIX}/bin

.include <bsd.port.mk>
