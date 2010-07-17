# $OpenBSD: Makefile,v 1.2 2010/07/17 13:43:36 kili Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-stm
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
