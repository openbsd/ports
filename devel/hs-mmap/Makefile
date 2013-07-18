# $OpenBSD: Makefile,v 1.17 2013/07/18 22:21:24 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.8
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
