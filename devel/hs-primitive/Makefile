# $OpenBSD: Makefile,v 1.18 2017/11/07 21:19:25 kili Exp $

COMMENT =		primitive memory-related operations

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		primitive-0.6.1.0
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Ip44DqhfCp21tTUYbecwa

.include <bsd.port.mk>
