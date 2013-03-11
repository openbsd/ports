# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:06 espie Exp $

COMMENT =		monad-transformer version of Control.Exception.catch

DISTNAME =		MonadCatchIO-mtl-0.3.0.5
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://darcsden.com/jcpetruzza/MonadCatchIO-mtl

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
