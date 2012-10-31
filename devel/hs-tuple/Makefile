# $OpenBSD: Makefile,v 1.1.1.1 2012/10/31 19:20:41 kili Exp $

COMMENT =		various functions on tuples

DISTNAME =		tuple-0.2.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-OneTuple

.include <bsd.port.mk>
