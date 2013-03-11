# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:07 espie Exp $

COMMENT =		mtl compatible GhcT monad-transformer

DISTNAME =		ghc-mtl-1.0.1.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-MonadCatchIO-mtl>=0.2.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
