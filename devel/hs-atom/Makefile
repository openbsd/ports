# $OpenBSD: Makefile,v 1.1.1.1 2010/11/23 20:10:12 jasper Exp $

COMMENT=		DSL for embedded hard realtime applications

DISTNAME=		atom-1.0.7
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
RUN_DEPENDS=		devel/hs-uniplate

.include <bsd.port.mk>
