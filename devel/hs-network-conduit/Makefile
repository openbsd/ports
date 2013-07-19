# $OpenBSD: Makefile,v 1.5 2013/07/19 07:01:26 kili Exp $

COMMENT =		stream socket data using conduits

DISTNAME =		network-conduit-1.0.0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-conduit>=1.0,<1.1 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-monad-control>=0.3,<0.4 \
			devel/hs-network>=2.3 \
			devel/hs-transformers>=0.2.2,<0.4



.include <bsd.port.mk>
