# $OpenBSD: Makefile,v 1.7 2011/09/16 09:24:50 espie Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
REVISION =		4
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
