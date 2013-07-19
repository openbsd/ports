# $OpenBSD: Makefile,v 1.7 2013/07/19 06:47:55 kili Exp $

COMMENT=		Monad classes, using type families

DISTNAME=		monads-tf-0.1.0.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2.0.0,<0.4
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
