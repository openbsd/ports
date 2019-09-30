# $OpenBSD: Makefile,v 1.7 2019/09/30 13:00:12 kili Exp $

COMMENT =		cryptographic hashes for bytestrings

DISTNAME =		digest-0.0.1.2
REVISION =		4
CATEGORIES =		devel security

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	93hmxvQ2VB3FeV97QkdTpW

RUN_DEPENDS =		archivers/hs-zlib

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
