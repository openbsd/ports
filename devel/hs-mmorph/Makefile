# $OpenBSD: Makefile,v 1.11 2019/09/30 12:58:09 kili Exp $

COMMENT =		monad morphisms

DISTNAME =		mmorph-1.0.9
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5nK9LlJVZhp6HBh22XokjD

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-transformers-compat>=0.3,<0.6

.include <bsd.port.mk>
