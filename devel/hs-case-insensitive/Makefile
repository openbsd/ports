# $OpenBSD: Makefile,v 1.7 2013/07/18 21:46:41 kili Exp $

COMMENT =		case insensitive string comparison

DISTNAME =		case-insensitive-1.0.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.0,<1.3 \
			devel/hs-text>=0.3,<0.12

.include <bsd.port.mk>
