# $OpenBSD: Makefile,v 1.19 2019/09/10 13:51:29 kili Exp $

COMMENT=		generic interface for cryptographic operations

DISTNAME=		crypto-api-0.13.2
REVISION =		5
CATEGORIES=		security net

HOMEPAGE=		http://trac.haskell.org/crypto-api/wiki

# BSD3
PERMIT_PACKAGE =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HdoaNKgPjwIDvahrsdJlLG

RUN_DEPENDS =		devel/hs-cereal>=0.2 \
			devel/hs-tagged>=0.1 \
			security/hs-entropy

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
