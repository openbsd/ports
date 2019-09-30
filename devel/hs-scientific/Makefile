# $OpenBSD: Makefile,v 1.13 2019/09/30 12:58:10 kili Exp $

COMMENT =		scientific number type

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		scientific-0.3.4.6
REVISION =		3
CATEGORIES =		devel

HOMEPAGE =		https://github.com/basvandijk/scientific

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8lzJdBgmh0d6HfBS9oJaPn

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.1.2,<1.3 \
			devel/hs-vector>=0.5,<0.13

.include <bsd.port.mk>
