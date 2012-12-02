# $OpenBSD: Makefile,v 1.17 2012/12/02 20:28:19 kili Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.5.1.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-random

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
