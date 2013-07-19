# $OpenBSD: Makefile,v 1.13 2013/07/19 06:45:23 kili Exp $

COMMENT =		memoize strings as atoms

DISTNAME =		stringtable-atom-0.0.6.2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
