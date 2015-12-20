# $OpenBSD: Makefile,v 1.18 2015/12/20 11:26:53 kili Exp $

COMMENT=		implementation of Oleg Kiselyov's left-fold enumerators

DISTNAME=		enumerator-0.4.20
REVISION=		1
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

MODGHC_PACKAGE_KEY =	H7gU0nKN2x4EiMqcJDRfeO

# Set text-names-broken if hs-text goes >= 0.11
MODGHC_SETUP_CONF_ARGS =	-f text-names-broken

RUN_DEPENDS =		devel/hs-text>=0.7
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
