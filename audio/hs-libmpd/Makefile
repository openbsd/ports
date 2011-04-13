# $OpenBSD: Makefile,v 1.4 2011/04/13 06:45:50 jasper Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.6.0
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		https://github.com/joachifm/libmpd-haskell

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-network>=2.1,<2.4 \
			devel/hs-mtl>=0.2

.include <bsd.port.mk>
