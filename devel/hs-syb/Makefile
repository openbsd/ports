# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:34 sthen Exp $

COMMENT =		Scrap Your Boilerplate library for generic programming

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		syb-0.7
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3Lq8MQxmYP07qktjI1jxu0

.include <bsd.port.mk>
