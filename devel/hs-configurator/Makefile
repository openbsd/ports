# $OpenBSD: Makefile,v 1.7 2015/07/23 18:05:51 kili Exp $

COMMENT =		configuration management library

DISTNAME =		configurator-0.2.0.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-hashable \
			devel/hs-text>=0.11.1.0 \
			devel/hs-unix-compat \
			devel/hs-unordered-containers \
			textproc/hs-attoparsec>=0.10.0.2

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
