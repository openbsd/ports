# $OpenBSD: Makefile,v 1.27 2019/09/30 12:58:07 kili Exp $

COMMENT =		unit testing framework for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		HUnit-1.3.1.1
REVISION =		2
CATEGORIES =		devel
HOMEPAGE =		http://hunit.sourceforge.net/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	fpJTntHxjpEWtL7XQ9CwB

.include <bsd.port.mk>
