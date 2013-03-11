# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:07 espie Exp $

COMMENT =		constraint manipulation

DISTNAME=		constraints-0.3.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-newtype>=0.2,<0.3

.include <bsd.port.mk>
