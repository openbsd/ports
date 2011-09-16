# $OpenBSD: Makefile,v 1.4 2011/09/16 09:24:50 espie Exp $

COMMENT=		DSL for embedded hard realtime applications

DISTNAME=		atom-1.0.9
REVISION =		0
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
