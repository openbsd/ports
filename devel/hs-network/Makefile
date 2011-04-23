# $OpenBSD: Makefile,v 1.11 2011/04/23 14:32:51 kili Exp $

COMMENT =		Haskell networking library

DISTNAME =		network-2.3.0.2
REVISION =		0
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-parsec
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
