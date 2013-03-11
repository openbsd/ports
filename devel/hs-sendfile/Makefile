# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:08 espie Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.6
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
