# $OpenBSD: Makefile,v 1.15 2010/06/15 17:38:17 kili Exp $

COMMENT =	documentation-generation tool for Haskell libraries

DISTNAME =	haddock-2.7.2
PKGNAME =	${DISTNAME}p1
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

WANTLIB =		c m util

.if ! ${FLAVOR:L:Mno_deps}
MODULES =		lang/ghc converters/libiconv
# No haddock library (yet).
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS +=		gmp::devel/gmp

BUILD_DEPENDS +=	::devel/alex \
			::devel/happy \
			::devel/hs-ghc-paths \
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
