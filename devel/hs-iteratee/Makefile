# $OpenBSD: Makefile,v 1.13 2013/07/19 06:51:37 kili Exp $

COMMENT =		Iteratee monad provides strict, safe, and functional I/O

DISTNAME =		iteratee-0.8.9.4
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-ListLike>=3.0,<4 \
			devel/hs-MonadCatchIO-transformers>0.2,<0.4 \
			devel/hs-monad-control>=0.3,<0.4 \
			devel/hs-parallel>=2,<4 \
			devel/hs-transformers-base>=0.4,<0.5 \
			devel/hs-transformers>=0.2,<0.4
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
