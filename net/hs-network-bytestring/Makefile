# $OpenBSD: Makefile,v 1.2 2010/10/28 13:53:44 jasper Exp $

COMMENT =		socket functions that use Data.ByteString

DISTNAME =		network-bytestring-0.1.3
REVISION =		0
CATEGORIES =		net

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::devel/hs-network
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
