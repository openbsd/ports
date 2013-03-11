# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:41 espie Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.7
REVISION =		3
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
