# $OpenBSD: Makefile,v 1.14 2013/05/04 21:17:17 kili Exp $

COMMENT=		TLS/SSL protocol native implementation

DISTNAME=		tls-0.8.1
REVISION=		4
CATEGORIES=		security net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

# devel/hs-vector needed because changes to it cause (ghc) signature
# changes to cryptocipher because of broken ghc optimizations.
RUN_DEPENDS =		devel/hs-cereal>=0.3 \
			devel/hs-mtl \
			devel/hs-vector \
			security/hs-crypto-api>=0.5 \
			security/hs-certificate>=0.9.4,<1.0 \
			security/hs-cryptocipher>=0.2.5 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
