# $OpenBSD: Makefile,v 1.18 2018/01/22 21:48:45 kili Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.12
REVISION =		1
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1bosF4Whssj874aGh3f9kn

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
