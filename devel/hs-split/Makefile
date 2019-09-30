# $OpenBSD: Makefile,v 1.17 2019/09/30 12:21:39 kili Exp $

COMMENT =		library for splitting lists

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		split-0.2.3.3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6n1iQ0JLFvkeXvJXsAqQc

.include <bsd.port.mk>
