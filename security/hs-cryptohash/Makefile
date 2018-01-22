# $OpenBSD: Makefile,v 1.16 2018/01/22 21:47:04 kili Exp $

COMMENT=		fast, pure, practical collection of crypto hashes

DISTNAME=		cryptohash-0.7.10
REVISION=		4
CATEGORIES=		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HcwvxMqpgmiAmodT7Z0qKE

MODGHC_SETUP_CONF_ARGS =        -f cryptoapi

RUN_DEPENDS =           devel/hs-tagged \
			security/hs-crypto-api>=0.5
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
