# $OpenBSD: Makefile,v 1.3 2016/01/29 20:28:09 kili Exp $

COMMENT =		half precision floating point

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		half-0.2.2.1
REVISION =		0
CATEGORIES =		devel math

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	95G55q5jL6d7kizMvUlRqm

.include <bsd.port.mk>
