# $OpenBSD: Makefile,v 1.22 2016/01/29 20:28:08 kili Exp $

COMMENT =		parallel programming library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		parallel-3.2.0.6
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3arfJHZNth8DfwPPt7zuRB

.include <bsd.port.mk>
