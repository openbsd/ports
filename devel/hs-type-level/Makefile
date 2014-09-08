# $OpenBSD: Makefile,v 1.8 2014/09/08 17:04:51 jasper Exp $

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
