# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:25 espie Exp $

COMMENT=		fast, pure, practical collection of crypto hashes

DISTNAME=		cryptohash-0.7.0
REVISION=		4
CATEGORIES=		security

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =        -f cryptoapi

RUN_DEPENDS =           devel/hs-tagged \
			security/hs-crypto-api>=0.5
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
