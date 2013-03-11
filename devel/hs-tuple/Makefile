# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:08 espie Exp $

COMMENT =		various functions on tuples

DISTNAME =		tuple-0.2.0.1
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-OneTuple

.include <bsd.port.mk>
