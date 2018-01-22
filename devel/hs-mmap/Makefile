# $OpenBSD: Makefile,v 1.23 2018/01/22 21:42:27 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.8
REVISION =		5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	YKRLoBjTsh8c5O1n5SrN9

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
