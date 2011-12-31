# $OpenBSD: Makefile,v 1.16 2011/12/31 22:19:45 kili Exp $

COMMENT =		library to convert between different types

DISTNAME =		convertible-1.0.11.0
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-text>=0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
