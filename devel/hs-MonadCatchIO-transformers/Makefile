# $OpenBSD: Makefile,v 1.8 2012/09/02 20:31:43 kili Exp $

COMMENT =		functions to throw and catch exceptions

DISTNAME =		MonadCatchIO-transformers-0.3.0.0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
