# $OpenBSD: Makefile,v 1.10 2017/11/07 22:39:28 kili Exp $

COMMENT=		fast, high quality pseudo random number generation

DISTNAME=		mwc-random-0.13.3.2
REVISION=		2
CATEGORIES=		math security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ALWxOYwcRWRA7yFmhTCIXg

RUN_DEPENDS =		devel/hs-primitive \
			devel/hs-vector>=0.7
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
