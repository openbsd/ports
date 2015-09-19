# $OpenBSD: Makefile,v 1.20 2015/09/19 08:18:33 kili Exp $

COMMENT =		manipulating Haskell source code

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		haskell-src-1.0.2.0
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3NTeIQVKWZ6Lt2GkedBWgV

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/happy

RUN_DEPENDS=		devel/hs-syb

.include <bsd.port.mk>
