# $OpenBSD: Makefile,v 1.3 2017/11/07 22:39:13 kili Exp $

COMMENT =		cryptographic hashes for bytestrings

DISTNAME =		digest-0.0.1.2
REVISION =		1
CATEGORIES =		devel security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Jkg2DJlP1uNCnEMQswznXb

RUN_DEPENDS =		archivers/hs-zlib

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
