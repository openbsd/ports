# $OpenBSD: Makefile,v 1.14 2017/11/07 22:03:26 kili Exp $

COMMENT =		case insensitive string comparison

DISTNAME =		case-insensitive-1.2.0.6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Cbq2rcWML3n1jpqsTRqRcn

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.3 \
			devel/hs-text>=0.3,<1.3

.include <bsd.port.mk>
