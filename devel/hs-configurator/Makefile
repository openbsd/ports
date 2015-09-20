# $OpenBSD: Makefile,v 1.8 2015/09/20 18:29:20 kili Exp $

COMMENT =		configuration management library

DISTNAME =		configurator-0.2.0.2
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1BJok1JDmd935VIyLAltGi

RUN_DEPENDS +=		devel/hs-hashable \
			devel/hs-text>=0.11.1.0 \
			devel/hs-unix-compat \
			devel/hs-unordered-containers \
			textproc/hs-attoparsec>=0.10.0.2

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
