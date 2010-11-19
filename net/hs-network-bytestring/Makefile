# $OpenBSD: Makefile,v 1.4 2010/11/19 22:31:33 espie Exp $

COMMENT =		socket functions that use Data.ByteString

DISTNAME =		network-bytestring-0.1.3
REVISION =		1
CATEGORIES =		net

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-network
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
