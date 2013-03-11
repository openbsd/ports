# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:25 espie Exp $

COMMENT =		a family of cryptographic hash functions

DISTNAME =		skein-0.1.0.9
REVISION =		1
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.3,<0.4 \
			devel/hs-tagged>=0.2,<0.5 \
			security/hs-crypto-api>=0.6,<0.11

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
