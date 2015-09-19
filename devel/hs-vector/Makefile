# $OpenBSD: Makefile,v 1.18 2015/09/19 08:13:23 kili Exp $

COMMENT =		Int-indexed arrays

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		vector-0.11.0.0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	3jMaUrldidp1bqsrn0qsS2

RUN_DEPENDS +=		devel/hs-primitive>=0.5.0.1,<0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
