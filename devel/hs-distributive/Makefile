# $OpenBSD: Makefile,v 1.1.1.1 2012/01/23 21:04:08 kili Exp $

COMMENT =		Haskell 98 distributive functors

DISTNAME =		distributive-0.2.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2.2,<0.3
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
