# $OpenBSD: Makefile,v 1.18 2014/11/24 16:07:59 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.8
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
