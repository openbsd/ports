# $OpenBSD: Makefile,v 1.7 2016/01/20 16:20:44 kili Exp $

COMMENT =		constraint manipulation

DISTNAME=		constraints-0.3.2
REVISION =		4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2Bm9xG80C9NJZzMQS8P6YI

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-newtype>=0.2,<0.3

.include <bsd.port.mk>
