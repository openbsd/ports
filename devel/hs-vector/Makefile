# $OpenBSD: Makefile,v 1.26 2019/09/30 12:27:46 kili Exp $

COMMENT =		Int-indexed arrays

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		vector-0.12.0.3
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2LEYu9M2i7lERDtz76XG3n

RUN_DEPENDS +=		devel/hs-primitive>=0.6,<0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
