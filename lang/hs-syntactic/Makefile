# $OpenBSD: Makefile,v 1.5 2014/12/15 20:03:33 kili Exp $

COMMENT =		abstract syntax and utilities for embedded languages

# XXX update to newer version needs a new dependency: tree-view.
# No version prior to 1.10 (which adds the new dependency) is buildable
# with ghc-7.8.

DISTNAME =		syntactic-1.4
REVISION =		1
CATEGORIES =		devel lang

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-constraints \
			devel/hs-data-hash \
			devel/hs-mtl>=2,<3 \
			devel/hs-tuple>=0.2

.include <bsd.port.mk>
