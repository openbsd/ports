# $OpenBSD: Makefile,v 1.24 2017/11/07 22:35:59 kili Exp $

COMMENT =		manipulating Haskell source code

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		haskell-src-1.0.2.0
REVISION =		2
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LWJhH60HaHSDbuVJrdJiUp

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/happy

RUN_DEPENDS=		devel/hs-syb

.include <bsd.port.mk>
