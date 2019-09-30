# $OpenBSD: Makefile,v 1.18 2019/09/30 12:58:08 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
CATEGORIES=		devel
REVISION=		9

# BSD3
PERMIT_PACKAGE =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FoXGioXi2585r8kGFY1MGK

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist \
			devel/hs-old-locale

.include <bsd.port.mk>
