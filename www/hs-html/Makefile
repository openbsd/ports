# $OpenBSD: Makefile,v 1.20 2017/11/07 21:34:28 kili Exp $

COMMENT =		HTML combinator library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		html-1.0.1.2
REVISION =		14
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Jj2JgpzqaYBEsxjiTkT0Vw

.include <bsd.port.mk>
