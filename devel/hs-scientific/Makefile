# $OpenBSD: Makefile,v 1.8 2017/11/07 22:20:53 kili Exp $

COMMENT =		scientific number type

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

# 0.3.4.9 for haskell-platform 8.0.2
DISTNAME =		scientific-0.3.4.6
CATEGORIES =		devel

HOMEPAGE =		https://github.com/basvandijk/scientific

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KHbfTo5SODkPBujZqnDMi

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.1.2,<1.3 \
			devel/hs-text>=0.8,<1.3 \
			devel/hs-vector>=0.5,<0.12

.include <bsd.port.mk>
