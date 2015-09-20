# $OpenBSD: Makefile,v 1.13 2015/09/20 16:23:20 kili Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.11
REVISION =		0
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5gbM4m6k3rhGIQyEboR1bR

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
