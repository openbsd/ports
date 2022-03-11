COMMENT=		parser generator for Haskell

MODCABAL_STEM=		happy
MODCABAL_VERSION=	1.20.0
MODCABAL_DATA_DIR=	data

CATEGORIES=		devel

HOMEPAGE=		http://www.haskell.org/happy/

# BSD3
PERMIT_PACKAGE=	Yes

WANTLIB=		c ffi gmp iconv m pthread

MODULES=		devel/cabal

LIB_DEPENDS=		converters/libiconv \
			devel/gmp \
			devel/libffi

BUILD_DEPENDS+=		textproc/docbook-xsl

# Required for building the documentation and for the regression tests:
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.69
AUTOCONF_DIR=		${WRKSRC}/doc
WRKCONF=		${AUTOCONF_DIR}

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw happy ${PREFIX}/share/doc

do-test:
	@cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} -j${MAKE_JOBS} HAPPY=${MODCABAL_BUILT_EXECUTABLE_happy} \
		TEST_HAPPY_OPTS="-t ${WRKBUILD}/data --strict"

.include <bsd.port.mk>
