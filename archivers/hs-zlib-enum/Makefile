# $OpenBSD: Makefile,v 1.6 2013/07/19 06:49:31 kili Exp $

COMMENT =		enumerator interface for zlib compression

DISTNAME =		zlib-enum-0.2.3
CATEGORIES =		archivers devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib-bindings>=0.1,<0.2 \
			devel/hs-enumerator>=0.4,<0.5 \
			devel/hs-transformers>=0.2,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
