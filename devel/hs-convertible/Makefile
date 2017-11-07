# $OpenBSD: Makefile,v 1.28 2017/11/07 22:09:28 kili Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.1.1.0
REVISION =		5
CATEGORIES =		devel

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	GDWA5TLfPHZJtpqcDJ6kUe

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-text>=0.8
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
