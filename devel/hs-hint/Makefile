# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:07 espie Exp $

COMMENT =		Runtime Haskell interpreter (GHC API wrapper)

DISTNAME =		hint-0.3.3.4
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-MonadCatchIO-mtl>=0.3 \
			devel/hs-ghc-paths \
			devel/hs-ghc-mtl>=1.0.1.0,<1.1.0.0 \
			devel/hs-mtl \
			devel/hs-random \
			lang/hs-haskell-src
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
