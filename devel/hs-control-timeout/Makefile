# $OpenBSD: Makefile,v 1.8 2012/10/28 23:27:05 kili Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
REVISION =		5
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
