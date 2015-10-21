# $OpenBSD: Makefile,v 1.20 2015/10/21 19:08:13 kili Exp $

BROKEN-i386 =		needs a fixed rts/Linker.c in ghc

COMMENT =		functional graph library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		fgl-5.5.2.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HCl7HwlNnZACW6DhmXEeDJ

RUN_DEPENDS +=		devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
