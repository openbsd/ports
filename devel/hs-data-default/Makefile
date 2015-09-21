# $OpenBSD: Makefile,v 1.11 2015/09/21 18:22:37 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
CATEGORIES=		devel
REVISION=		3

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2PsdqfvoOKaD8h5rikM8PX

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist \
			devel/hs-old-locale

.include <bsd.port.mk>
