# $OpenBSD: Makefile,v 1.9 2013/01/20 18:01:18 kili Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
REVISION =		6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm

.include <bsd.port.mk>
