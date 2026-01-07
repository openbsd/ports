COMMENT=		parser generator for Haskell

MODCABAL_STEM=		happy
MODCABAL_VERSION=	2.1.7
MODCABAL_DATA_DIR=	data  # unused

CATEGORIES=		devel

HOMEPAGE=		http://www.haskell.org/happy/

# BSD3
PERMIT_PACKAGE=	Yes

WANTLIB=		c ffi gmp iconv m pthread

MODULES=		devel/cabal

LIB_DEPENDS=		converters/libiconv \
			devel/gmp \
			devel/libffi

# Required for building the documentation and for the regression tests:
USE_GMAKE=		Yes

MODCABAL_MANIFEST	= \
	happy-lib	2.1.7	0	\

do-test:
	@cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} -j${MAKE_JOBS} HAPPY=${MODCABAL_BUILT_EXECUTABLE_happy} \
		TEST_HAPPY_OPTS="--ghc -t ${WRKDIR}/happy-lib-${MODCABAL_VERSION}/data --strict" all

.include <bsd.port.mk>
