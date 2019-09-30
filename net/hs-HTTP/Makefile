# $OpenBSD: Makefile,v 1.34 2019/09/30 12:31:18 kili Exp $

COMMENT =		library for client-side HTTP

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		HTTP-4000.3.13
CATEGORIES =		net devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	84dyfwBlJKS3ljJTR3NNxp

RUN_DEPENDS =		devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-network>=2.6,<2.7
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
