# $OpenBSD: Makefile,v 1.1.1.1 2014/12/14 14:48:40 kili Exp $

COMMENT =		mutable hash tables in the ST monad

DISTNAME =		hashtables-1.2.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.2.1,<1.3 \
			devel/hs-primitive \
			devel/hs-vector>=0.7,<0.12


.include <bsd.port.mk>
