# $OpenBSD: Makefile,v 1.3 2016/01/20 16:20:43 kili Exp $

COMMENT =		State variables

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		StateVar-1.1.0.1
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FY3ACHU7buPKhi6jREemUn

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.0,<2.5

.include <bsd.port.mk>
