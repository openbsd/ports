# $OpenBSD: Makefile,v 1.12 2014/12/15 15:14:35 kili Exp $

COMMENT =		monad-transformer version of Control.Exception.catch

DISTNAME =		MonadCatchIO-mtl-0.3.1.0
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://darcsden.com/jcpetruzza/MonadCatchIO-mtl

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadCatchIO-transformers>=0.3.0.0 \
			devel/hs-extensible-exceptions \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
