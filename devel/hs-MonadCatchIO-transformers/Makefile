# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:06 espie Exp $

COMMENT =		functions to throw and catch exceptions

DISTNAME =		MonadCatchIO-transformers-0.3.0.0
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
