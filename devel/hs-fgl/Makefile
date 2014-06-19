# $OpenBSD: Makefile,v 1.17 2014/06/19 18:58:01 kili Exp $

COMMENT =		functional graph library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		fgl-5.4.2.4
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://web.engr.oregonstate.edu/~erwig/fgl/haskell/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
