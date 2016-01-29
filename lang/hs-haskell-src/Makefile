# $OpenBSD: Makefile,v 1.23 2016/01/29 20:28:09 kili Exp $

COMMENT =		manipulating Haskell source code

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		haskell-src-1.0.2.0
REVISION =		1
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	L5FnTXYimTzE7JszPj0uf6

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/happy

RUN_DEPENDS=		devel/hs-syb

.include <bsd.port.mk>
