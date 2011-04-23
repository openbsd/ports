# $OpenBSD: Makefile,v 1.3 2011/04/23 14:32:51 kili Exp $

COMMENT =		monad-transformer version of Control.Exception.catch

DISTNAME =		MonadCatchIO-mtl-0.3.0.2
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
