# $OpenBSD: Makefile,v 1.17 2017/11/07 22:21:38 kili Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.9
REVISION =		4
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4xAX2ROLQ0tLTWSaJTMvdZ

RUN_DEPENDS +=		devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
