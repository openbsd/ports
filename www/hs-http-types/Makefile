# $OpenBSD: Makefile,v 1.9 2015/09/20 18:29:21 kili Exp $

COMMENT =		generic HTTP types for Haskell

DISTNAME =		http-types-0.8.5
REVISION =		0
CATEGORIES =		devel www

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ICIjMIJra3e11DPREyzFw4

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-case-insensitive>=0.2,<1.3 \
			devel/hs-text>=0.11.0.2

.include <bsd.port.mk>
