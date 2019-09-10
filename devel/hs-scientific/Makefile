# $OpenBSD: Makefile,v 1.12 2019/09/10 13:51:26 kili Exp $

COMMENT =		scientific number type

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		scientific-0.3.4.6
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		https://github.com/basvandijk/scientific

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JWnrWS98ixeAp8KdIqhPYx

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.1.2,<1.3 \
			devel/hs-text>=0.8,<1.3 \
			devel/hs-vector>=0.5,<0.13

.include <bsd.port.mk>
