# $OpenBSD: Makefile,v 1.1.1.1 2010/06/20 09:42:25 kili Exp $

COMMENT =		timeout handling

DISTNAME =		control-timeout-0.1.2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-stm

.include <bsd.port.mk>
