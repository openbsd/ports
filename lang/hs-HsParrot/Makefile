# $OpenBSD: Makefile,v 1.12 2013/07/19 07:06:33 kili Exp $

COMMENT =		Haskell integration with Parrot virtual machine

DISTNAME =		HsParrot-0.0.2.20120717
CATEGORIES =		lang devel

# MIT (see comment in HsParrot.cabal)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HsSyck \
			devel/hs-pugs-DrIFT>=2.2.3.20120717

.include <bsd.port.mk>
