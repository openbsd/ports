# $OpenBSD: Makefile,v 1.3 2011/04/05 11:40:07 kili Exp $

COMMENT=		implementation of Oleg Kiselyov's left-fold enumerators

DISTNAME=		enumerator-0.4.4
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

# Set text-names-broken if hs-text goes >= 0.11
MODGHC_SETUP_CONF_ARGS =	-f text-names-broken

RUN_DEPENDS =		devel/hs-text \
			devel/hs-transformers
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
