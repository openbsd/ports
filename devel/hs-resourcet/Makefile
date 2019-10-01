# $OpenBSD: Makefile,v 1.15 2019/10/01 19:18:27 kili Exp $

COMMENT =		deterministic allocation and freeing of scarce resources

DISTNAME =		resourcet-1.2.2
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	DmlZdkLzX278vkyONsp8WQ

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.8,<0.11 \
			devel/hs-primitive \
			devel/hs-unliftio-core

.include <bsd.port.mk>
