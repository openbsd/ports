# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:08 espie Exp $

COMMENT=	help writing simple, concise and fast operations

DISTNAME=	uniplate-1.6.7
REVISION=	1
CATEGORIES=	devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-hashable>=1.1.2.3,<1.2 \
			devel/hs-syb \
			devel/hs-unordered-containers>=0.1,<0.3

.include <bsd.port.mk>
