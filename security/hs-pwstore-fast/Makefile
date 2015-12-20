# $OpenBSD: Makefile,v 1.9 2015/12/20 11:33:36 kili Exp $

COMMENT =		secure password storage

DISTNAME =		pwstore-fast-2.3
REVISION =		4
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3peYt4P2kbS9pg7aKlNglE

RUN_DEPENDS =		devel/hs-base64-bytestring>=0.1 \
			devel/hs-random>=1 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
