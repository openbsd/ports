# $OpenBSD: Makefile,v 1.2 2011/04/25 15:11:39 jasper Exp $

COMMENT=		bidirectional mapping between two key types

DISTNAME=		bimap-0.2.4
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

.include <bsd.port.mk>
