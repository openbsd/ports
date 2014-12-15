# $OpenBSD: Makefile,v 1.12 2014/12/15 20:19:37 kili Exp $

COMMENT=		generic interface for cryptographic operations

DISTNAME=		crypto-api-0.13.2
CATEGORIES=		security net

HOMEPAGE=		http://trac.haskell.org/crypto-api/wiki

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.2 \
			devel/hs-tagged>=0.1 \
			security/hs-entropy

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
