# $OpenBSD: Makefile,v 1.19 2015/09/20 15:09:36 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.8
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JxaErdXJ6OQ0jtApvXLsav

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
