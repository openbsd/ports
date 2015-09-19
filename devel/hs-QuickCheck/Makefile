# $OpenBSD: Makefile,v 1.23 2015/09/19 07:52:36 kili Exp $

COMMENT =		automatic testing of Haskell programs

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		QuickCheck-2.8.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1fWvpr9QgXz0phpE20gfU8

RUN_DEPENDS =		devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-random \
			devel/hs-tf-random>=0.4

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
