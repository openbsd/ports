# $OpenBSD: Makefile,v 1.9 2019/09/30 12:58:09 kili Exp $

COMMENT =		URI manipulation

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		network-uri-2.6.0.3
REVISION =		5
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DzDJgRGkftH4MeBwibLkIb

.include <bsd.port.mk>
