# $OpenBSD: Makefile,v 1.2 2016/01/20 16:26:19 kili Exp $

COMMENT =		half precision floating point

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
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
