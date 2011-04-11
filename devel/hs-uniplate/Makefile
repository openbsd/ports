# $OpenBSD: Makefile,v 1.5 2011/04/11 14:47:17 kili Exp $

COMMENT=	help writing simple, concise and fast operations

DISTNAME=	uniplate-1.6
REVISION=	0
CATEGORIES=	devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-syb

.include <bsd.port.mk>
