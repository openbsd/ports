# $OpenBSD: Makefile,v 1.3 2014/12/25 21:27:24 kili Exp $

BROKEN =		deprecated

COMMENT =		comonad transformers using functional dependencies

DISTNAME =		comonads-fd-3.0.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-comonad-transformers>=3.0 \
			devel/hs-comonad>=3.0 \
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-semigroups>=0.8.3.1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
