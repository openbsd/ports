# $OpenBSD: Makefile,v 1.11 2017/11/07 22:39:45 kili Exp $

COMMENT =		secure password storage

DISTNAME =		pwstore-fast-2.3
REVISION =		6
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	I1s1vEhU1qdA0ZH1ex8Zui

RUN_DEPENDS =		devel/hs-base64-bytestring>=0.1 \
			devel/hs-random>=1 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
