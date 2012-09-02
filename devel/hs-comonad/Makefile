# $OpenBSD: Makefile,v 1.4 2012/09/02 21:54:38 kili Exp $

COMMENT =		Haskell 98 comonads

DISTNAME =		comonad-1.1.1.6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2.0,<0.4 \
			devel/hs-semigroups>=0.8.3.1,<0.9
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
