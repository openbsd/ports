# $OpenBSD: Makefile,v 1.1.1.1 2013/07/18 20:59:54 kili Exp $

COMMENT =		monad morphisms

DISTNAME =		mmorph-1.0.0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-transformers>=0.2.0.0,<0.4

.include <bsd.port.mk>
