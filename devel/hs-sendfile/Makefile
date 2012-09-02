# $OpenBSD: Makefile,v 1.8 2012/09/02 21:47:33 kili Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.6
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
