# $OpenBSD: Makefile,v 1.2 2016/08/09 08:25:20 dcoppa Exp $

COMMENT =		catch exceptions from within an enclosed computation

DISTNAME =		enclosed-exceptions-1.0.1.1
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	443I3ul9Mm4L6Q16OjX0NQ

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-async>=2.0 \
			devel/hs-lifted-base>=0.2 \
			devel/hs-monad-control \
			devel/hs-transformers-base

.include <bsd.port.mk>
