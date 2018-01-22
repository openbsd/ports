# $OpenBSD: Makefile,v 1.8 2018/01/22 21:42:27 kili Exp $

COMMENT =		monad morphisms

DISTNAME =		mmorph-1.0.9
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	8UaKrPqOttEJIi786pOOKJ

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-mtl>=2.0.1,<2.3 \
			devel/hs-transformers-compat>=0.3,<0.6

.include <bsd.port.mk>
