# $OpenBSD: Makefile,v 1.8 2017/11/07 22:23:42 kili Exp $

COMMENT =		various functions on tuples

DISTNAME =		tuple-0.2.0.1
REVISION =		5
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ATo98tYVGmi2BVay1e4TH6

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-OneTuple

.include <bsd.port.mk>
