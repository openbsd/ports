# $OpenBSD: Makefile,v 1.8 2017/11/07 22:08:56 kili Exp $

COMMENT =		constraint manipulation

DISTNAME=		constraints-0.8
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DevqWLbLuWIvIBL60xhF3

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.2,<1.3 \
			devel/hs-newtype>=0.2,<0.3 \
			devel/hs-tagged>=0.2,<1 \
			devel/hs-transformers-compat>=0.4,<1

.include <bsd.port.mk>
