COMMENT =		interactive and automated theorem prover

DPB_PROPERTIES =	parallel

V =			4.35.0
GH_ACCOUNT =		leanprover
GH_PROJECT =		lean4
GH_TAGNAME =		v${V}
DISTNAME =		lean-${V}

# Lean makes its dance with .a and .so, no SHARED_LIBS

CATEGORIES =		math lang

HOMEPAGE =		https://lean-lang.org/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto gmp m ssl uv

BUILD_DEPENDS = 	archivers/leangz \
			shells/bash \
			devel/git,-main \
			math/cadical

LIB_DEPENDS = 		devel/gmp,-main \
			devel/libuv

TEST_DEPENDS =		shells/bash \
			textproc/gdiff \
			sysutils/coreutils \
			sysutils/ggrep

# C++20
COMPILER =		base-clang ports-gcc

MODULES +=		devel/cmake

USE_NINJA =		No
USE_GMAKE = 		Yes

CONFIGURE_ARGS =	-DUSE_SYSTEM_CADICAL=ON \
			-DUSE_MIMALLOC=OFF \
			-DUSE_GITHASH=OFF \
			-DCCACHE=OFF \
			-DSTAGE0_CCACHE=OFF \
			-DINSTALL_CADICAL=OFF \
			-DINSTALL_LEANTAR=OFF

# It hardcoded LLVM-19
CONFIGURE_ARGS +=	-DLLVM=OFF

# Default stack is 1Gb per thread, limit it for compiling
MAKE_ENV +=   		LEAN_STACK_SIZE_KB=65536

TEST_ENV +=		CTEST_PARALLEL_LEVEL=${MAKE_JOBS} \
			LAKE=${WRKBUILD}/stage1/bin/lake \
			LD_LIBRARY_PATH=${WRKBUILD}/stage1/lib/lean

pre-configure:
	ln -sf ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

do-install:
	${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
	    ${LOCALBASE}/bin/cmake --install ${WRKBUILD}/stage1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lean
	mv ${PREFIX}/LICENSE ${PREFIX}/LICENSES \
	    ${PREFIX}/share/doc/lean

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -sf ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep
	ln -sf ${LOCALBASE}/bin/gstat ${WRKDIR}/bin/stat
	ln -sf ${LOCALBASE}/bin/gstat ${WRKDIR}/bin/stat
	ln -sf ${LOCALBASE}/bin/leangz ${WRKBUILD}/stage1/bin
	ln -sf ${LOCALBASE}/bin/leantar ${WRKBUILD}/stage1/bin


.include <bsd.port.mk>
