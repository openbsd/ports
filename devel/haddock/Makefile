# $OpenBSD: Makefile,v 1.22 2010/08/26 22:05:05 kili Exp $

COMMENT-main =	documentation-generation tool for Haskell libraries
COMMENT-lib =	haddock library

DISTNAME =	haddock-2.7.2
PKGNAME-main =	${DISTNAME}
REVISION-main =	3
PKGNAME-lib =	hs-${DISTNAME}
REVISION-lib =	0
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/haddock/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# This pseudo flavor is needed to let ghc extract the haddock sources
# without pulling in haddocks own build dependencies (which would
# include ghc).
PSEUDO_FLAVORS =	no_deps
FLAVOR ?=

.if ! ${FLAVOR:L:Mno_deps}
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage register

LIB_DEPENDS-lib =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			::devel/gmp

WANTLIB-main =		c gmp m pthread util

BUILD_DEPENDS +=	::devel/alex \
			::devel/happy \
			::devel/hs-ghc-paths \
			::lang/ghc,-doc \
			::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt \
			${RUN_DEPENDS}

# Required for building the documentation:
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.61
AUTOCONF_DIR =		${WRKSRC}/doc
WRKCONF =		${AUTOCONF_DIR}
.else
MASTER_SITES =		http://hackage.haskell.org/packages/archive/${DISTNAME:S,-,/,}/

do-build:
	@echo "*** The no_deps FLAVOR is not meant to be built at all, it is"
	@echo "*** only used by lang/ghc to get a copy of the haddock sources."
	@false
.endif

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${MODGHC_SETUP_PROG} \
		--with-haddock=${WRKBUILD}/dist/build/haddock/haddock \
		haddock --haddock-option=-l${WRKBUILD}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw haddock ${PREFIX}/share/doc

.include <bsd.port.mk>
