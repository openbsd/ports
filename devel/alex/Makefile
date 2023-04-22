COMMENT =		lexical analyser generator for Haskell

MODCABAL_STEM =		alex
MODCABAL_VERSION =	3.2.7.3
MODCABAL_DATA_DIR =	data
CATEGORIES =		devel

HOMEPAGE =		https://www.haskell.org/alex/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util

MODULES =		devel/cabal

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

# needed for do-test
USE_GMAKE =		Yes

do-test:
	cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} \
	${MAKE_PROGRAM} ALEX=${MODCABAL_BUILT_EXECUTABLE_alex} \
			TEST_ALEX_OPTS=--template=../data \
			-j ${MAKE_JOBS} all


.include <bsd.port.mk>
