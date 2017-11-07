# $OpenBSD: Makefile,v 1.2 2017/11/07 22:22:24 kili Exp $

COMMENT =		file and directory path manipulations

DISTNAME =		system-filepath-0.4.13.4
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Cz9RU6pGV0nF5btelDEP3u

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-text>=0.11.0.6

.include <bsd.port.mk>
