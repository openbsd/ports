# $OpenBSD: Makefile,v 1.7 2012/09/02 21:23:43 kili Exp $

COMMENT=	help writing simple, concise and fast operations

DISTNAME=	uniplate-1.6.7
CATEGORIES=	devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-hashable>=1.1.2.3,<1.2 \
			devel/hs-syb \
			devel/hs-unordered-containers>=0.1,<0.3

.include <bsd.port.mk>
