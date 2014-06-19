# $OpenBSD: Makefile,v 1.46 2014/06/19 18:58:01 kili Exp $

COMMENT-main =	documentation-generation tool for Haskell libraries
COMMENT-lib =	haddock library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =	haddock-2.13.2
PKGNAME-main =	${DISTNAME}
PKGNAME-lib =	hs-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/haddock/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage register

# We still use the version bundled with the ghc sources, even if it's
# the same as the one from hackage, because it contains the alex- and
# happy-generated sources. And we cannot generate them ourselves,
# because alex and happy themselves depend on some Haskell packages
# (devel/hs-QuickCheck resp. devel/hs-mtl) which obviously need haddock
# to be built.
DISTFILES =
BUILD_DEPENDS +=	lang/ghc:patch

LIB_DEPENDS-lib =
LIB_DEPENDS-main =	${LIB_DEPENDS}

WANTLIB-lib =
WANTLIB-main =		${WANTLIB} \
			c m pthread util

BUILD_DEPENDS +=	devel/hs-ghc-paths \
			lang/ghc,-doc \
			textproc/docbook-xsl \
			${RUN_DEPENDS}

RUN_DEPENDS-lib =	${RUN_DEPENDS} \
			devel/hs-ghc-paths

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.61
AUTOCONF_DIR =		${WRKSRC}/doc
WRKCONF =		${AUTOCONF_DIR}

post-extract:
	mv ${WRKDIR}/lang/ghc/ghc-${MODGHC_VER}/utils/haddock ${WRKSRC}
	rm -f ${WRKSRC}/src/Haddock/*.source

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} \
		--with-haddock=${WRKBUILD}/dist/build/haddock/haddock \
		haddock --haddock-option=-l${WRKBUILD}/resources

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw haddock ${PREFIX}/share/doc

.include <bsd.port.mk>
