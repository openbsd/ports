# $OpenBSD: Makefile,v 1.7 2013/07/19 06:51:06 kili Exp $

COMMENT =		generic HTTP types for Haskell

DISTNAME =		http-types-0.8.0
CATEGORIES =		devel www

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-case-insensitive>=0.2,<1.1 \
			devel/hs-text>=0.11.0.2,<0.12

.include <bsd.port.mk>
