# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:34 sthen Exp $

COMMENT =		random number library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		random-1.1
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LLUGZ7T9DqQ5vN0Jbcd0We

.include <bsd.port.mk>
