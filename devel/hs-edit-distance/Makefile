# $OpenBSD: Makefile,v 1.4 2019/09/30 12:58:08 kili Exp $

COMMENT =		Levenshtein edit distances

DISTNAME =		edit-distance-0.2.2.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4bW3W2hnyAoDkdg1hZrDEh

BUILD_DEPENDS+=		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-random>=1.0

.include <bsd.port.mk>
