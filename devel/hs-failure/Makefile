# $OpenBSD: Makefile,v 1.5 2013/01/20 18:01:36 kili Exp $

COMMENT=		simple type class for success/failure computations

DISTNAME=		failure-0.1.0.1
REVISION=		3
CATEGORIES=		devel

HOMEPAGE=		http://www.haskell.org/haskellwiki/Failure

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

.include <bsd.port.mk>
