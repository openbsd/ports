# $OpenBSD: Makefile,v 1.28 2019/09/30 12:08:11 kili Exp $

COMMENT =		functional graph library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		fgl-5.7.0.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CpDtOA8pKQl6hGnWjlttIk

.include <bsd.port.mk>
