# $OpenBSD: Makefile,v 1.13 2010/04/22 21:49:12 kili Exp $

COMMENT =	documentation-generation tool for Haskell libraries

DISTNAME =	haddock-2.7.2
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/haddock/

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

WANTLIB =		c m pthread util

.if ! ${FLAVOR:L:Mno_deps}
MODULES =		lang/ghc converters/libiconv
# No haddock library (yet).
MODGHC_BUILD =		cabal hackage nort

RUN_DEPENDS +=		::devel/hs-ghc-paths

BUILD_DEPENDS +=	::devel/alex \
			::devel/happy \
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
.endif

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw haddock ${PREFIX}/share/doc

.include <bsd.port.mk>
