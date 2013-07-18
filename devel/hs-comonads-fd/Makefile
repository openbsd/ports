# $OpenBSD: Makefile,v 1.1.1.1 2013/07/18 20:44:13 kili Exp $

COMMENT =		comonad transformers using functional dependencies

DISTNAME =		comonads-fd-3.0.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-comonad-transformers>=3.0 \
			devel/hs-comonad>=3.0 \
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-semigroups>=0.8.3.1 \
			devel/hs-transformers>=0.2,<0.4 

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
