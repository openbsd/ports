# $OpenBSD: Makefile,v 1.4 2011/04/12 11:15:20 jasper Exp $

COMMENT=		TLS/SSL protocol native implementation

DISTNAME=		tls-0.6.0
REVISION=		0
CATEGORIES=		security net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-binary>=0.5 \
			devel/hs-cereal>=0.3 \
			devel/hs-vector \
			security/hs-crypto-api>=0.5 \
			security/hs-certificate>=0.7.0 \
			security/hs-cryptocipher>=0.2.5 \
			security/hs-cryptohash>=0.6
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
