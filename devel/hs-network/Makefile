# $OpenBSD: Makefile,v 1.34 2019/09/30 12:58:09 kili Exp $

COMMENT =		Haskell networking library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		network-2.6.2.1
REVISION =		5
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Lfd6hU8QSOtC72PepFdIPJ

.include <bsd.port.mk>
