# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:08 espie Exp $

COMMENT =		lift computations from the bottom of a transformer stack

DISTNAME =		transformers-base-0.4.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
