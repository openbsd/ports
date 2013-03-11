# $OpenBSD: Makefile,v 1.6 2013/03/11 11:41:25 espie Exp $

COMMENT =		secure password storage

DISTNAME =		pwstore-fast-2.3
REVISION =		1
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-base64-bytestring>=0.1 \
			devel/hs-random>=1 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
