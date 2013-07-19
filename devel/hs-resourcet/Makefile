# $OpenBSD: Makefile,v 1.5 2013/07/19 06:53:56 kili Exp $

COMMENT =		deterministic allocation and freeing of scarce resources

DISTNAME =		resourcet-0.4.6
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-lifted-base>=0.1 \
			devel/hs-monad-control>=0.3.1,<0.4 \
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-transformers>=0.2.2,<0.4 \
			devel/hs-transformers-base>=0.4.1,<0.5

.include <bsd.port.mk>
