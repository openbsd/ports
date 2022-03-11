COMMENT =		interactive and automated theorem prover

GH_ACCOUNT =		leanprover-community
GH_PROJECT =		lean
GH_TAGNAME =		v3.35.1

CATEGORIES =		math lang

HOMEPAGE =		https://leanprover-community.github.io

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c gmp m pthread ${COMPILER_LIBCXX}
LIB_DEPENDS = 		devel/gmp,-main

SUBST_VARS +=		CXXFLAGS
post-patch:
	${SUBST_CMD} ${WRKSRC}/util/lean_path.cpp ${WRKSRC}/CMakeLists.txt

# C++11
COMPILER =		base-clang ports-gcc

WRKSRC =		${WRKDIST}/src

MODULES +=		devel/cmake
MODULES +=		lang/python

MODPY_RUNDEP =		No

MAKE_ENV +=	"LEAN_PATH=${WRKDIST}/bin:${WRKDIST}/library:${WRKDIST}/leanpkg"

TEST_DEPENDS =		${MODPY_RUN_DEPENDS} \
			shells/bash \
			textproc/gdiff

.include <bsd.port.mk>
