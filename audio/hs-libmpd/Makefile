# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:34 sthen Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.9.0.7
REVISION=		2
CATEGORIES=		audio

HOMEPAGE=		https://github.com/joachifm/libmpd-haskell

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

MODGHC_PACKAGE_KEY=	F2ZfiW69JTD1yGu4DIm545

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-data-default>=0.4,<1.0 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.1,<3.0 \
			devel/hs-text>=0.11,<2.0 \
			devel/hs-utf8-string>=0.3.1,<1.1 \
			textproc/hs-attoparsec>=0.10.1,<1.0

.include <bsd.port.mk>
