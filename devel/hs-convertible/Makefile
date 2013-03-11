# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:07 espie Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.0.11.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-text>=0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
