# $OpenBSD: Makefile,v 1.17 2017/11/07 22:42:05 kili Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.12
REVISION =		0
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9jcL0aGisLx104IXlAGAAj

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
