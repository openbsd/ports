# $OpenBSD: Makefile,v 1.7 2014/12/03 21:56:43 kili Exp $

COMMENT =		enumerator interface for zlib compression

DISTNAME =		zlib-enum-0.2.3
REVISION =		0
CATEGORIES =		archivers devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib-bindings>=0.1,<0.2 \
			devel/hs-enumerator>=0.4,<0.5
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
