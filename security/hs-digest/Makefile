# $OpenBSD: Makefile,v 1.4 2018/01/22 21:47:04 kili Exp $

COMMENT =		cryptographic hashes for bytestrings

DISTNAME =		digest-0.0.1.2
REVISION =		2
CATEGORIES =		devel security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	J7cjlUazOWnIwNGrU2CIF8

RUN_DEPENDS =		archivers/hs-zlib

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
