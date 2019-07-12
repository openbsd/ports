# $OpenBSD: Makefile,v 1.31 2019/07/12 20:44:12 sthen Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.1.1.0
REVISION =		7
CATEGORIES =		devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CcttzSMZvrP7n0GTZtYEig

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-text>=0.8
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
