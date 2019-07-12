# $OpenBSD: Makefile,v 1.32 2019/07/12 20:48:27 sthen Exp $

COMMENT =		library for client-side HTTP

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		HTTP-4000.3.7
CATEGORIES =		net devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BrMupjBt6VI5SSxxBJEd3T

RUN_DEPENDS =		devel/hs-mtl>=2.0,<2.3 \
			devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-network>=2.6,<2.7 \
			devel/hs-parsec>=2.0,<3.2
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
