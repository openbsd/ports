# $OpenBSD: Makefile,v 1.15 2014/11/22 20:59:42 kili Exp $

COMMENT =		HTML combinator library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		html-1.0.1.2
REVISION =		10
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
