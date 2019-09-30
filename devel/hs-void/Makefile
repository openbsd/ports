# $OpenBSD: Makefile,v 1.14 2019/09/30 12:58:11 kili Exp $

COMMENT =		a Haskell 98 logically uninhabited data type

DISTNAME =		void-0.7.1
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4dWhCwpMos6SOv2KNio96

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-hashable>=1.1 \
			devel/hs-semigroups>=0.8.2

.include <bsd.port.mk>
