# $OpenBSD: Makefile,v 1.22 2017/11/07 22:24:23 kili Exp $

COMMENT =		Int-indexed arrays

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		vector-0.11.0.0
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BEDZb5o2QOhGbIm6ky7rl6

RUN_DEPENDS +=		devel/hs-primitive>=0.5.0.1,<0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
