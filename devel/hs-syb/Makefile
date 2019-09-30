# $OpenBSD: Makefile,v 1.21 2019/09/30 12:58:10 kili Exp $

COMMENT =		Scrap Your Boilerplate library for generic programming

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		syb-0.7
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KRW1LCxdMiCJrmhxCvzo37

.include <bsd.port.mk>
