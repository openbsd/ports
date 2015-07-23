# $OpenBSD: Makefile,v 1.19 2015/07/23 17:58:55 kili Exp $

COMMENT =		fast combinator parsing for bytestrings

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking (0.11.* should be ok).
DISTNAME =		attoparsec-0.11.3.4
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.11.1.5 \
			devel/hs-scientific>=0.3.1,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

# When built with --enable-tests, haddock fails.
NO_TEST =		Yes

.include <bsd.port.mk>
