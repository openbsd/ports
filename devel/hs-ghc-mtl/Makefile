# $OpenBSD: Makefile,v 1.3 2012/09/02 21:28:37 kili Exp $

COMMENT =		mtl compatible GhcT monad-transformer

DISTNAME =		ghc-mtl-1.0.1.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-MonadCatchIO-mtl>=0.2.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
