# $OpenBSD: Makefile,v 1.7 2013/06/07 14:22:39 dcoppa Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist

.include <bsd.port.mk>
