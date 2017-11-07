# $OpenBSD: Makefile,v 1.5 2017/11/07 22:17:12 kili Exp $

COMMENT =		URI manipulation

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		network-uri-2.6.0.3
REVISION =		2
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6W3sg3RLwTVJuGlk5cvpRM

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-parsec>=3.0,<3.2

.include <bsd.port.mk>
