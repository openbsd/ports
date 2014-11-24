# $OpenBSD: Makefile,v 1.9 2014/11/24 16:07:58 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
CATEGORIES=		devel
REVISION=		1

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist

.include <bsd.port.mk>
