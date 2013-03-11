# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:07 espie Exp $

COMMENT=		Monad classes, using type families

DISTNAME=		monads-tf-0.1.0.0
REVISION=		3
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
