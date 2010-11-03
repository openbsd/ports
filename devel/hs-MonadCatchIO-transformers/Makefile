# $OpenBSD: Makefile,v 1.4 2010/11/03 22:13:38 kili Exp $

COMMENT =		functions to throw and catch exceptions

DISTNAME =		MonadCatchIO-transformers-0.2.2.0
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		::devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
