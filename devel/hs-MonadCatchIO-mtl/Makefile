# $OpenBSD: Makefile,v 1.7 2012/10/28 23:26:01 kili Exp $

COMMENT =		monad-transformer version of Control.Exception.catch

DISTNAME =		MonadCatchIO-mtl-0.3.0.5
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://darcsden.com/jcpetruzza/MonadCatchIO-mtl

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
