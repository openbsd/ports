# $OpenBSD: Makefile,v 1.33 2019/09/30 12:58:08 kili Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.1.1.0
REVISION =		9
CATEGORIES =		devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4JGGYsaDyuUDyUW9qH2fP2

RUN_DEPENDS +=		devel/hs-old-locale \
			devel/hs-old-time
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
