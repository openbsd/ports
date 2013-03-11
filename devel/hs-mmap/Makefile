# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:07 espie Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.6
REVISION =		5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-HUnit
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
