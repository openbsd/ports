# $OpenBSD: Makefile,v 1.6 2014/11/25 22:11:05 kili Exp $

COMMENT=		fast, high quality pseudo random number generation

DISTNAME=		mwc-random-0.12.0.1
REVISION=		2
CATEGORIES=		math security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-primitive \
			devel/hs-vector>=0.7
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
