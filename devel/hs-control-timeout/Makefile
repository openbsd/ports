# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:07 espie Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
REVISION =		6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm

.include <bsd.port.mk>
