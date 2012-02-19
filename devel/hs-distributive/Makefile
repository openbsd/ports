# $OpenBSD: Makefile,v 1.2 2012/02/19 20:40:22 kili Exp $

COMMENT =		Haskell 98 distributive functors

DISTNAME =		distributive-0.2.0.1
REVISION =		0
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
