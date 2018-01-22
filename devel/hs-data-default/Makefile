# $OpenBSD: Makefile,v 1.15 2018/01/22 21:40:32 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
CATEGORIES=		devel
REVISION=		7

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	H8DtWiIYInLGBIshsVPXQj

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist \
			devel/hs-old-locale

.include <bsd.port.mk>
