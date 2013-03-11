# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:06 espie Exp $

COMMENT=		DSL for embedded hard realtime applications

DISTNAME=		atom-1.0.9
REVISION =		2
CATEGORIES=		devel lang

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-bimap \
			devel/hs-mtl \
			devel/hs-syb

.include <bsd.port.mk>
