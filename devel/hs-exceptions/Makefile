# $OpenBSD: Makefile,v 1.9 2019/09/30 12:07:02 kili Exp $

COMMENT =		extensible optionally-pure exceptions

DISTNAME =		exceptions-0.10.0

CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JiZfwt536PI14yUdSMAaVj

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-transformers-compat>=0.3,<0.7

.include <bsd.port.mk>
