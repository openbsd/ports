COMMENT =	3D graphics library for FNA
PKGNAME =	fna3d-${V}

SHARED_LIBS =	FNA3D		4.3	# 24.02

CATEGORIES +=	graphics

# zlib
PERMIT_PACKAGE = Yes

WANTLIB +=	SDL2

# base-gcc does not have thread-local storage
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2

USE_GMAKE =	Yes

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/FNA/lib/FNA3D
SUBST_VARS +=	LIBFNA3D_VERSION

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

do-install:
	${INSTALL_DATA} ${WRKSRC}/include/*.h ${PREFIX}/include/
	${INSTALL_DATA} ${WRKBUILD}/libFNA3D.so.${LIBFNA3D_VERSION} ${PREFIX}/lib/

.include <bsd.port.mk>
