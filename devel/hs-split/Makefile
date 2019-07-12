# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:34 sthen Exp $

COMMENT =		library for splitting lists

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		split-0.2.3.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7cayvoeRj5XIrIBUB58mMy

.include <bsd.port.mk>
