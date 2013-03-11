# $OpenBSD: Makefile,v 1.22 2013/03/11 11:35:47 espie Exp $

COMMENT =		library for client-side HTTP

DISTNAME =		HTTP-4000.2.5
REVISION =		0
CATEGORIES =		net devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =-fnetwork23

RUN_DEPENDS =		devel/hs-mtl>=2.0,<2.2 \
			devel/hs-network<2.4 \
			devel/hs-parsec
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
