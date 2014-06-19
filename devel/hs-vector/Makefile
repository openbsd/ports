# $OpenBSD: Makefile,v 1.14 2014/06/19 18:58:01 kili Exp $

COMMENT =		Int-indexed arrays

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		vector-0.10.0.1
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive>=0.5.0.1,<0.6
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
