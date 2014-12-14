# $OpenBSD: Makefile,v 1.10 2014/12/14 11:26:07 kili Exp $

BROKEN =		does not compile with ghc-7.8

COMMENT =		type-level programming library

DISTNAME =		type-level-0.2.4
REVISION=		4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
