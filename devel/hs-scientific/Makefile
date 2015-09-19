# $OpenBSD: Makefile,v 1.4 2015/09/19 08:04:42 kili Exp $

COMMENT =		scientific number type

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		scientific-0.3.3.8
CATEGORIES =		devel

HOMEPAGE =		https://github.com/basvandijk/scientific

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5NQHiMKEgH2DOLHdLSFbA2

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.1.2,<1.3 \
			devel/hs-text>=0.8,<1.3

.include <bsd.port.mk>
