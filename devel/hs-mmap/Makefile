# $OpenBSD: Makefile,v 1.26 2019/09/30 12:11:25 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.9
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BXMYRGD0Ckq9xaZJXGHtu5

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
