# $OpenBSD: Makefile,v 1.5 2012/10/21 18:28:39 kili Exp $

COMMENT =		Haskell 98 lenses

DISTNAME =		data-lens-2.10.2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-comonad>=1.1.1.3,<3.1 \
			devel/hs-comonad-transformers>=2.0,<3.1 \
			devel/hs-semigroupoids>=1.2.4,<3.1 \
			devel/hs-transformers>=0.2.0,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
