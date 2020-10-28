# $OpenBSD: Makefile,v 1.8 2020/10/28 16:16:17 bcallah Exp $

COMMENT =	open source engine recreation for Diablo 1 game
PKGNAME =	${DISTNAME:L}
CATEGORIES =	games x11

GH_ACCOUNT =	diasurgical
GH_PROJECT =	devilutionX
GH_TAGNAME =	1.1.0

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
			-DDEBUG=OFF \
			-DDISABLE_LTO=ON \
			-DVERSION_NUM="${GH_TAGNAME}"

NO_TEST =	Yes

# Remove DOS line endings from patched files
post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' CMakeLists.txt \
		SourceS/miniwin.h

# No install target
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/devilutionx ${PREFIX}/bin

.include <bsd.port.mk>
