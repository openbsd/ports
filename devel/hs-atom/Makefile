# $OpenBSD: Makefile,v 1.6 2013/01/20 18:00:15 kili Exp $

COMMENT=		DSL for embedded hard realtime applications

DISTNAME=		atom-1.0.9
REVISION =		2
CATEGORIES=		devel lang

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-bimap \
			devel/hs-mtl \
			devel/hs-syb

.include <bsd.port.mk>
