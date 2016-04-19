# $OpenBSD: Makefile,v 1.16 2016/04/19 09:30:12 dcoppa Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.12
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	GKxg7TMDzsEJNmYGcG0H8I

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
