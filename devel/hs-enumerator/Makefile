# $OpenBSD: Makefile,v 1.14 2014/09/08 17:04:51 jasper Exp $

COMMENT=		implementation of Oleg Kiselyov's left-fold enumerators

DISTNAME=		enumerator-0.4.19
REVISION=		3
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

# Set text-names-broken if hs-text goes >= 0.11
MODGHC_SETUP_CONF_ARGS =	-f text-names-broken

RUN_DEPENDS =		devel/hs-text \
			devel/hs-transformers
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
