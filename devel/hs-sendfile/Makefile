# $OpenBSD: Makefile,v 1.12 2013/07/19 06:48:23 kili Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.9
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
