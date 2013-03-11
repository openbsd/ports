# $OpenBSD: Makefile,v 1.28 2013/03/11 10:50:06 espie Exp $

COMMENT=		parser generator for Haskell

DISTNAME=		happy-1.18.10
CATEGORIES=		devel

HOMEPAGE=		http://www.haskell.org/happy/

# BSD3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MODULES=		lang/ghc converters/libiconv
MODGHC_BUILD=		cabal hackage nort

BUILD_DEPENDS+=		devel/hs-mtl>=1.0 \
			textproc/docbook-xsl

# Required for building the documentation and for the regression tests:
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61
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
		${MAKE_PROGRAM} HAPPY=${WRKBUILD}/dist/build/happy/happy \
		TEST_HAPPY_OPTS="-t ${WRKBUILD} --strict"

.include <bsd.port.mk>
