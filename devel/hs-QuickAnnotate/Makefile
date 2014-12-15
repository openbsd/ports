# $OpenBSD: Makefile,v 1.5 2014/12/15 21:05:06 kili Exp $

BROKEN =		does not build with new haskell-src-exts

COMMENT =		annotation framework

DISTNAME =		QuickAnnotate-0.6
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread util

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS=		lang/hs-haskell-src-exts>=1.11.1,<1.14

# Install the example mentioned in DESCR.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hs-QuickAnnotate
	${INSTALL_DATA} ${WRKSRC}/Examples/* \
		${PREFIX}/share/examples/hs-QuickAnnotate

.include <bsd.port.mk>
