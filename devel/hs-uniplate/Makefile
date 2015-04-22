# $OpenBSD: Makefile,v 1.12 2015/04/22 20:24:11 sthen Exp $

BROKEN-i386=	duplicate definition for symbol __i686.get_pc_thunk.bx

COMMENT=	help writing simple, concise and fast operations

DISTNAME=	uniplate-1.6.12
CATEGORIES=	devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-hashable>=1.1.2.3,<1.3 \
			devel/hs-syb \
			devel/hs-unordered-containers>=0.2.1,<0.3

.include <bsd.port.mk>
