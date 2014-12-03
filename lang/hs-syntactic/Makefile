# $OpenBSD: Makefile,v 1.4 2014/12/03 21:56:44 kili Exp $

COMMENT =		abstract syntax and utilities for embedded languages

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
