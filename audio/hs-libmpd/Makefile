# $OpenBSD: Makefile,v 1.14 2014/09/08 12:34:44 dcoppa Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.8.0.5
CATEGORIES=		audio

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

HOMEPAGE=		https://github.com/joachifm/libmpd-haskell

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-data-default>=0.4.0,<0.6 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.1,<2.6 \
			devel/hs-text>=0.11 \
			textproc/hs-attoparsec>=0.10.1,<0.13

.include <bsd.port.mk>
