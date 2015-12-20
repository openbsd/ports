# $OpenBSD: Makefile,v 1.21 2015/12/20 11:34:51 kili Exp $

COMMENT =		fast combinator parsing for bytestrings

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		attoparsec-0.13.0.1
REVISION =		0
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2FdFrGI1H7BFYxoTdLHZV5

RUN_DEPENDS =		devel/hs-text>=1.1.1.3 \
			devel/hs-scientific>=0.3.1,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

# When built with --enable-tests, haddock fails.
NO_TEST =		Yes

.include <bsd.port.mk>
