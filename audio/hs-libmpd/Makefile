# $OpenBSD: Makefile,v 1.11 2013/01/25 08:23:57 dcoppa Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.8.0.2
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
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-text>=0.11,<0.12

.include <bsd.port.mk>
