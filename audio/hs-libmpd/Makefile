# $OpenBSD: Makefile,v 1.2 2011/01/19 17:19:51 jasper Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.5.0
REVISION=		0
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
RUN_DEPENDS=		devel/hs-network>=2.1,<2.3

.include <bsd.port.mk>
