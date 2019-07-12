# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:59 sthen Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.12
REVISION =		2
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1bosF4Whssj874aGh3f9kn

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
