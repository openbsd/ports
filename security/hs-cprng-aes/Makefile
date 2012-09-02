# $OpenBSD: Makefile,v 1.2 2012/09/02 21:25:48 kili Exp $

COMMENT =		crypto PRNG using AES in counter mode.

DISTNAME =		cprng-aes-0.2.3
REVISION =		0
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.3.0,<0.4.0 \
			devel/hs-random \
			security/hs-crypto-api>=0.8 \
			security/hs-cryptocipher>=0.2.5,<0.4.0 \
			security/hs-entropy>=0.2

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
