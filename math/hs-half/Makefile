# $OpenBSD: Makefile,v 1.4 2017/11/07 21:31:32 kili Exp $

COMMENT =		half precision floating point

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		half-0.2.2.1
REVISION =		1
CATEGORIES =		devel math

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1XxH1kXnbwQ8TT8aKwR9aE

.include <bsd.port.mk>
