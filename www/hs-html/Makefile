# $OpenBSD: Makefile,v 1.19 2016/01/29 20:28:09 kili Exp $

COMMENT =		HTML combinator library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		html-1.0.1.2
REVISION =		13
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3z3nL6m7IhuGkUl83NkAdQ

.include <bsd.port.mk>
