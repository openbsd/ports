# $OpenBSD: Makefile,v 1.6 2014/12/14 10:31:02 kili Exp $

COMMENT =		configuration management library

DISTNAME =		configurator-0.2.0.2
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
