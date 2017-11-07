# $OpenBSD: Makefile,v 1.9 2017/11/07 22:16:47 kili Exp $

COMMENT =		lift control operations through monad transformers

DISTNAME =		monad-control-1.0.0.4
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ArboYSj8S8g9kJUeSKL8d7

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-stm>=2.3,<3 \
			devel/hs-transformers-base>=0.4.4,<0.5 \
			devel/hs-transformers-compat>=0.3,<0.6

.include <bsd.port.mk>
