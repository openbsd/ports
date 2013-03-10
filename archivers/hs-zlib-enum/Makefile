# $OpenBSD: Makefile,v 1.5 2013/03/10 22:28:04 espie Exp $

COMMENT =		enumerator interface for zlib compression

DISTNAME =		zlib-enum-0.2.2.1
REVISION =		1
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
