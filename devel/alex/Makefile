COMMENT =	lexical analyser generator for Haskell
REVISION =	0

MODCABAL_STEM 		= alex
MODCABAL_VERSION	= 3.2.5
MODCABAL_DATA_DIR	= data
CATEGORIES =	devel

HOMEPAGE =	https://www.haskell.org/alex/

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

MODULES =		devel/cabal

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

# Required for building the documentation:
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.61
AUTOCONF_DIR =		${WRKSRC}/doc
WRKCONF =		${AUTOCONF_DIR}

BUILD_DEPENDS +=	textproc/docbook-xsl

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw alex ${PREFIX}/share/doc

do-test:
	cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} \
	${MAKE_PROGRAM} ALEX=${MODCABAL_BUILT_EXECUTABLE_alex} \
			TEST_ALEX_OPTS=--template=../data \
			-j ${MAKE_JOBS} all


.include <bsd.port.mk>
