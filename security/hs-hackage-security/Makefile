# $OpenBSD: Makefile,v 1.5 2019/09/30 12:34:32 kili Exp $

# used by cabal-install

COMMENT=		hackage security library

DISTNAME=		hackage-security-0.5.3.0
CATEGORIES=		security

# BSD3
PERMIT_PACKAGE =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1VpHOvLcO2g6J40Ysrc07t

RUN_DEPENDS =		archivers/hs-zlib>=0.5,<0.7 \
			devel/hs-base16-bytestring>=0.1.1,<0.2 \
			devel/hs-base64-bytestring>=1.0,<1.1 \
			devel/hs-network>=2.6,<2.7 \
			devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-tar>=0.5,<0.6 \
			security/hs-cryptohash-sha256>=0.11,<0.12 \
			security/hs-ed25519

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
