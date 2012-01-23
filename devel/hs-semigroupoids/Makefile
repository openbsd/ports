# $OpenBSD: Makefile,v 1.1.1.1 2012/01/23 21:05:02 kili Exp $

COMMENT =		Haskell 98 semigroupoids

DISTNAME =		semigroupoids-1.2.6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-comonad>=1.1,<1.2 \
			devel/hs-contravariant>=0.1.2,<0.2 \
			devel/hs-semigroups>=0.8,<0.9 \
			devel/hs-transformers>=0.2.0,<=0.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
