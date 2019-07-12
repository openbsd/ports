# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:34 sthen Exp $

COMMENT =		old time library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		old-time-1.1.0.3
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LmKk8FUXtYwDVw5bR99HBe

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-old-locale>=1.0,<1.1

.include <bsd.port.mk>
