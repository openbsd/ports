# $OpenBSD: Makefile,v 1.28 2019/09/30 12:36:41 kili Exp $

COMMENT =		fast combinator parsing for bytestrings

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		attoparsec-0.13.2.2
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CBZ9N1yU4HAIpsNHHtc1qj

RUN_DEPENDS =		devel/hs-scientific>=0.3.1,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

# When built with --enable-tests, haddock fails.
NO_TEST =		Yes

.include <bsd.port.mk>
