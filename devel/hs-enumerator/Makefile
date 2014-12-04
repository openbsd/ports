# $OpenBSD: Makefile,v 1.15 2014/12/04 13:13:56 nigel Exp $

COMMENT=		implementation of Oleg Kiselyov's left-fold enumerators

DISTNAME=		enumerator-0.4.19
REVISION=		4
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

# Set text-names-broken if hs-text goes >= 0.11
MODGHC_SETUP_CONF_ARGS =	-f text-names-broken

RUN_DEPENDS =		devel/hs-text
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
