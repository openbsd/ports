# $OpenBSD: Makefile,v 1.20 2015/12/20 11:05:16 kili Exp $

COMMENT =		unit testing framework for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		HUnit-1.3.0.0
CATEGORIES =		devel
HOMEPAGE =		http://hunit.sourceforge.net/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BG7FInvjg0k8rLNKmL1VFA

.include <bsd.port.mk>
