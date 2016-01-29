# $OpenBSD: Makefile,v 1.16 2016/01/29 20:28:08 kili Exp $

COMMENT =		Scrap Your Boilerplate library for generic programming

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		syb-0.6
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4kccWaTe3QZLxAMQYKgEyE

.include <bsd.port.mk>
