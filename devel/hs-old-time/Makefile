# $OpenBSD: Makefile,v 1.1.1.1 2015/09/11 18:55:20 kili Exp $

COMMENT =		old time library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		old-time-1.1.0.3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FBWJJDS5FKr7UKFScBcUW2

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-old-locale>=1.0,<1.1

.include <bsd.port.mk>
