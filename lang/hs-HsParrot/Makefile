# $OpenBSD: Makefile,v 1.4 2010/11/03 22:17:15 kili Exp $

COMMENT =		Haskell integration with Parrot virtual machine

DISTNAME =		HsParrot-0.0.2
REVISION =		2
CATEGORIES =		lang devel

# MIT (see comment in HsParrot.cabal)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-HsSyck \
			::devel/hs-pugs-DrIFT
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
