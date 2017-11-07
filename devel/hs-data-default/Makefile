# $OpenBSD: Makefile,v 1.14 2017/11/07 22:09:51 kili Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
CATEGORIES=		devel
REVISION=		6

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Cy6t5wlkokGCGhlcPTB8tC

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist \
			devel/hs-old-locale

.include <bsd.port.mk>
