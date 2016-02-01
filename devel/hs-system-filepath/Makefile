# $OpenBSD: Makefile,v 1.1.1.1 2016/02/01 14:20:50 kili Exp $

COMMENT =		file and directory path manipulations

DISTNAME =		system-filepath-0.4.13.4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A0sKWExaxkr4jcJz0c4uxO

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-text>=0.11.0.6

.include <bsd.port.mk>
