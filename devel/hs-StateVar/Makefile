# $OpenBSD: Makefile,v 1.5 2017/11/07 22:01:11 kili Exp $

COMMENT =		State variables

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		StateVar-1.1.0.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CJpWsiXJdd89SnV9dZtTwc

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.0,<2.5

.include <bsd.port.mk>
