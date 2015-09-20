# $OpenBSD: Makefile,v 1.5 2015/09/20 15:09:35 kili Exp $

COMMENT =		constraint manipulation

DISTNAME=		constraints-0.3.2
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7uNdFNe4UI49d2GLi1CgPq

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-newtype>=0.2,<0.3

.include <bsd.port.mk>
