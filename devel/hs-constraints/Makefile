# $OpenBSD: Makefile,v 1.4 2014/12/02 20:45:23 kili Exp $

COMMENT =		constraint manipulation

DISTNAME=		constraints-0.3.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-newtype>=0.2,<0.3

.include <bsd.port.mk>
