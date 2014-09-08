# $OpenBSD: Makefile,v 1.9 2014/09/08 17:04:51 jasper Exp $

COMMENT=		symmetrical block and stream ciphers

DISTNAME=		cryptocipher-0.2.8
REVISION=		4
CATEGORIES=		security

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-vector \
			security/hs-crypto-api>=0.5
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
