COMMENT =	Z3 theorem prover

DIST_TUPLE =	github	Z3Prover	z3	z3-4.13.0	.
PKGNAME =	${DISTNAME:S/z3-//}

SHARED_LIBS =	z3	4.11

CATEGORIES =	math

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

# MIT
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

CONFIGURE_ARGS =	-DZ3_BUILD_PYTHON_BINDINGS=ON \
			-DZ3_ENABLE_EXAMPLE_TARGETS=OFF \
			-DZ3_INCLUDE_GIT_HASH=OFF \
			-DZ3_USE_LIB_GMP=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	${SUBST_CMD} ${WRKSRC}/scripts/mk_util.py

post-test:
	cd ${WRKBUILD} && \
	find ${WRKSRC}/examples/SMT-LIB2/ -type f -name '*.smt2' \
	    -exec echo \; -print -exec ./z3 {} \;

.include <bsd.port.mk>
