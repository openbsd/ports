# $OpenBSD: Makefile,v 1.24 2019/09/30 13:02:02 kili Exp $

COMMENT =		HTML combinator library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		html-1.0.1.2
REVISION =		17
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	23NOv2EcnHy3biHspV2LAZ

.include <bsd.port.mk>
