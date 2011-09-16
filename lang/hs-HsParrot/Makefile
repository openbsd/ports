# $OpenBSD: Makefile,v 1.7 2011/09/16 10:31:20 espie Exp $

COMMENT =		Haskell integration with Parrot virtual machine

DISTNAME =		HsParrot-0.0.2
REVISION =		4
CATEGORIES =		lang devel

# MIT (see comment in HsParrot.cabal)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HsSyck \
			devel/hs-pugs-DrIFT

.include <bsd.port.mk>
