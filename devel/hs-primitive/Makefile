# $OpenBSD: Makefile,v 1.19 2018/01/22 22:03:01 kili Exp $

COMMENT =		primitive memory-related operations

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		primitive-0.6.2.0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EI3NK1Xfv9zEcRtyXK2EwZ

.include <bsd.port.mk>
