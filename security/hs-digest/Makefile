# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:03 sthen Exp $

COMMENT =		cryptographic hashes for bytestrings

DISTNAME =		digest-0.0.1.2
REVISION =		2
CATEGORIES =		devel security

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	J7cjlUazOWnIwNGrU2CIF8

RUN_DEPENDS =		archivers/hs-zlib

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
