# $OpenBSD: Makefile,v 1.1.1.1 2015/12/29 12:45:55 kili Exp $

COMMENT =		cryptographic hashes for bytestrings

DISTNAME =		digest-0.0.1.2
CATEGORIES =		devel security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8570bcl5ORY4CoBhGC3icK

RUN_DEPENDS =		archivers/hs-zlib

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
