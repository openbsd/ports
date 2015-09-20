# $OpenBSD: Makefile,v 1.14 2015/09/20 16:23:20 kili Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.9
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2WmvcnMGuedJ4q1qHejSwL

RUN_DEPENDS +=		devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
