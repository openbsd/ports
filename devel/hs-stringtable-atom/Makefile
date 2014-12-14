# $OpenBSD: Makefile,v 1.14 2014/12/14 11:24:27 kili Exp $

COMMENT =		memoize strings as atoms

DISTNAME =		stringtable-atom-0.0.7
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
