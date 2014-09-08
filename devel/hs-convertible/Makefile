# $OpenBSD: Makefile,v 1.21 2014/09/08 12:41:54 dcoppa Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.1.0.0
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
