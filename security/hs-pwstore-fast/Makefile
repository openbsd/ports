# $OpenBSD: Makefile,v 1.1.1.1 2012/01/22 17:16:57 kili Exp $

COMMENT =		secure password storage

DISTNAME =		pwstore-fast-2.2
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-base64-bytestring>=0.1 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
