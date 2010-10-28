# $OpenBSD: Makefile,v 1.2 2010/10/28 13:51:47 jasper Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.6.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::net/hs-network-bytestring
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
