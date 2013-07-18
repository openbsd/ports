# $OpenBSD: Makefile,v 1.13 2013/07/18 22:42:54 kili Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.8.0.2
REVISION=		0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		https://github.com/joachifm/libmpd-haskell

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-mtl>=2.0,<2.2 \
			devel/hs-network>=2.1,<2.5 \
			devel/hs-text>=0.11,<0.12

.include <bsd.port.mk>
