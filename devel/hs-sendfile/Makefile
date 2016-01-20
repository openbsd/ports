# $OpenBSD: Makefile,v 1.16 2016/01/20 16:22:28 kili Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.9
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7X6R5hfyS6cEyhGFeBdSiM

RUN_DEPENDS +=		devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
