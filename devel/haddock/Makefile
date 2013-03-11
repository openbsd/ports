# $OpenBSD: Makefile,v 1.44 2013/03/11 10:50:06 espie Exp $

COMMENT-main =	documentation-generation tool for Haskell libraries
COMMENT-lib =	haddock library

DISTNAME =	haddock-2.11.0
PKGNAME-main =	${DISTNAME}
PKGNAME-lib =	hs-${DISTNAME}
REVISION-main =	0
REVISION-lib =	1
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/haddock/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage register

# Currently, we use the version bundled with the ghc sources, because
# the latest official haddock version (2.10.0) doesn't work with
# ghc-7.4. There's hope that this situation will be fixed upstream
# before ghc-7.6 will be released.
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
		haddock --haddock-option=-l${WRKBUILD}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw haddock ${PREFIX}/share/doc

.include <bsd.port.mk>
