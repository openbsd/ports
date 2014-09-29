# $OpenBSD: Makefile,v 1.15 2014/09/29 10:09:32 dcoppa Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.9.0.1
CATEGORIES=		audio

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

HOMEPAGE=		https://github.com/joachifm/libmpd-haskell

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-data-default>=0.4,<1.0 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.1,<3.0 \
			devel/hs-text>=0.11,<2.0 \
			textproc/hs-attoparsec>=0.10.1,<1.0

.include <bsd.port.mk>
