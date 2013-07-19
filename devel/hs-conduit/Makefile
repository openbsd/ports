# $OpenBSD: Makefile,v 1.5 2013/07/19 06:54:22 kili Exp $

COMMENT =		streaming data processing library

DISTNAME =		conduit-1.0.7.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-monad-control>=0.3.1,<0.4 \
			devel/hs-mtl \
			devel/hs-resourcet>=0.4.3,<0.5 \
			devel/hs-text>=0.11 \
			devel/hs-transformers-base>=0.4.1,<0.5 \
			devel/hs-transformers>=0.2.2,<0.4 \
			devel/hs-void>=0.5.5



.include <bsd.port.mk>
