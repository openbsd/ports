# $OpenBSD: Makefile,v 1.4 2010/11/15 19:45:59 espie Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.6.2
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		net/hs-network-bytestring
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
