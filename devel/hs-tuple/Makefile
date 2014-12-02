# $OpenBSD: Makefile,v 1.4 2014/12/02 20:45:23 kili Exp $

COMMENT =		various functions on tuples

DISTNAME =		tuple-0.2.0.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-OneTuple

.include <bsd.port.mk>
