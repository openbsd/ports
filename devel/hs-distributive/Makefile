# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:07 espie Exp $

COMMENT =		Haskell 98 distributive functors

DISTNAME =		distributive-0.2.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
