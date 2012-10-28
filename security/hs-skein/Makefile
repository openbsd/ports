# $OpenBSD: Makefile,v 1.3 2012/10/28 23:30:36 kili Exp $

COMMENT =		a family of cryptographic hash functions

DISTNAME =		skein-0.1.0.9
REVISION =		0
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.3,<0.4 \
			devel/hs-tagged>=0.2,<0.5 \
			security/hs-crypto-api>=0.6,<0.11

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
