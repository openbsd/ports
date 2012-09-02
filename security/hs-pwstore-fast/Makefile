# $OpenBSD: Makefile,v 1.2 2012/09/02 20:02:43 kili Exp $

COMMENT =		secure password storage

DISTNAME =		pwstore-fast-2.2
REVISION =		0
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-base64-bytestring>=0.1 \
			devel/hs-random>=1 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
