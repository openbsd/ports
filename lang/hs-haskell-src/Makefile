# $OpenBSD: Makefile,v 1.19 2014/11/22 20:55:27 kili Exp $

COMMENT =		manipulating Haskell source code

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		haskell-src-1.0.1.6
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-syb

.include <bsd.port.mk>
