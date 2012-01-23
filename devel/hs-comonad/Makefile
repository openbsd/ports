# $OpenBSD: Makefile,v 1.1.1.1 2012/01/23 21:02:56 kili Exp $

COMMENT =		Haskell 98 comonads

DISTNAME =		comonad-1.1.1.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2.0,<0.3 \
			devel/hs-semigroups>=0.8,<0.9
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
