# $OpenBSD: Makefile,v 1.8 2019/09/10 13:51:24 kili Exp $

COMMENT =		extensible optionally-pure exceptions

DISTNAME =		exceptions-0.8.3
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IMG8z9bQ0kKKt0LCvLfr9v

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl>=2.0,<2.3 \
			devel/hs-stm>=2.2,<3 \
    			devel/hs-transformers-compat>=0.3,<0.6

.include <bsd.port.mk>
