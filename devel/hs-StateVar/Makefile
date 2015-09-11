# $OpenBSD: Makefile,v 1.1.1.1 2015/09/11 18:49:53 kili Exp $

COMMENT =		State variables

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		StateVar-1.1.0.0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6iqvTorEoPGBvP2zy1zFJg

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.0,<2.5

.include <bsd.port.mk>
