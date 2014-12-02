# $OpenBSD: Makefile,v 1.5 2014/12/02 20:46:28 kili Exp $

COMMENT =		lifted IO operations from the base library

DISTNAME =		lifted-base-0.2.0.5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-base-unicode-symbols>=0.1.1,<0.3 \
			devel/hs-monad-control>=0.3,<0.4 \
			devel/hs-transformers-base>=0.4,<0.5

.include <bsd.port.mk>
