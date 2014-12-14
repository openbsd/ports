# $OpenBSD: Makefile,v 1.3 2014/12/14 11:14:01 kili Exp $

COMMENT =		lenses, folds and traversals

# XXX Update needs more new dependencies:
# bifunctors, generic-deriving, profunctor-extras, profunctors,
# reflection.


DISTNAME =		lens-3.7.6
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-comonad-transformers>=3 \
			devel/hs-comonad>=3 \
			devel/hs-comonads-fd>=3 \
			devel/hs-hashable>=1.1.2.3,<1.3 \
			devel/hs-mtl>=2.0.1,<2.2 \
			devel/hs-nats>=0.1 \
			devel/hs-parallel>=3.1.0.1,<3.3 \
			devel/hs-semigroups>=0.9 \
			devel/hs-split>=0.2,<0.3 \
			devel/hs-text>=0.11,<0.12 \
			devel/hs-unordered-containers>=0.2,<0.3 \
			devel/hs-vector>=0.9,<0.11

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
