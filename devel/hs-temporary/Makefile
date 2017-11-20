# $OpenBSD: Makefile,v 1.1.1.1 2017/11/20 19:17:00 kili Exp $

COMMENT =		portable temporary file and directory support

DISTNAME =		temporary-1.2.1.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Ipxz6mtANgu8gTukaTLAgc

RUN_DEPENDS =		devel/hs-exceptions>=0.6

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
