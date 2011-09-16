# $OpenBSD: Makefile,v 1.2 2011/09/16 09:24:50 espie Exp $

COMMENT =		Runtime Haskell interpreter (GHC API wrapper)

DISTNAME =		hint-0.3.3.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-MonadCatchIO-mtl>=0.2 \
			devel/hs-ghc-paths \
			devel/hs-ghc-mtl>=01.0.1.0,<1.1.0.0 \
			devel/hs-mtl \
			lang/hs-haskell-src
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
