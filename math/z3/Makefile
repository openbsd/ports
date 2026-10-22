COMMENT =	Z3 theorem prover

V =		5.3.1
GH_ACCOUNT =	Z3Prover
GH_PROJECT =	z3
GH_TAGNAME =	z3-${V}

DISTNAME =	z3-${V}

SHARED_LIBS =	z3	5.1

CATEGORIES =	math

DPB_PROPERTIES =	parallel

WANTLIB +=	c m pthread ${COMPILER_LIBCXX}

MAINTAINER =	Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

# C++20
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

CONFIGURE_ARGS =	-DZ3_BUILD_PYTHON_BINDINGS=ON \
			-DZ3_ENABLE_EXAMPLE_TARGETS=OFF \
			-DZ3_INCLUDE_GIT_HASH=OFF \
			-DZ3_USE_LIB_GMP=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-test:
	cd ${WRKBUILD} && \
	find ${WRKSRC}/examples/SMT-LIB2/ -type f -name '*.smt2' \
	    -exec echo \; -print -exec ./z3 {} \;

.include <bsd.port.mk>
