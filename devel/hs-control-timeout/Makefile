# $OpenBSD: Makefile,v 1.11 2014/11/25 22:11:03 kili Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
REVISION =		7
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm

.include <bsd.port.mk>
