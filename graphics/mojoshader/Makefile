COMMENT =	library to move Direct3D shader calls to OpenGL

DISTNAME =	mojoshader-0.0.0.20211124
GH_ACCOUNT =	icculus
GH_PROJECT =	mojoshader
GH_COMMIT =	76293ed6d5c4bb33875abb92979309e2797cc6ed
EPOCH =		0

SHARED_LIBS +=	mojoshader		2.0	# 0.0.0.20211124

CATEGORIES =	graphics
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

HOMEPAGE =	https://icculus.org/mojoshader/

# zlib
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += m

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/re2c \
		devel/sdl2 \
		graphics/vulkan-headers

TEST_DEPENDS =	security/p5-Digest-SHA1

# FLIP_VIEWPORT is needed by some FNA games (FEZ if I recall correctly)
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DFLIP_VIEWPORT=1 \
			-DPROFILE_METAL=OFF

CFLAGS +=	-I${LOCALBASE}/include

SUBST_VARS +=	HG_CHANGESET HG_COMMIT

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

# No upstream install target
do-install:
	${INSTALL_DATA} ${WRKSRC}/mojoshader*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libmojoshader.so.${LIBmojoshader_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
