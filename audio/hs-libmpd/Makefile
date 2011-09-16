# $OpenBSD: Makefile,v 1.5 2011/09/16 08:26:10 espie Exp $

COMMENT=		Haskell interface to MPD

DISTNAME=		libmpd-0.6.0
CATEGORIES=		audio
REVISION =		0

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
