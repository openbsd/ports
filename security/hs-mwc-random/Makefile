# $OpenBSD: Makefile,v 1.7 2015/09/21 13:46:09 kili Exp $

COMMENT=		fast, high quality pseudo random number generation

DISTNAME=		mwc-random-0.13.3.2
CATEGORIES=		math security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7BK7HpzPl1KD4oJqgI5h4h

RUN_DEPENDS =		devel/hs-primitive \
			devel/hs-vector>=0.7
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
