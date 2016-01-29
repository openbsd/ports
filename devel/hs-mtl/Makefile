# $OpenBSD: Makefile,v 1.14 2016/01/29 20:28:07 kili Exp $

COMMENT =		monad classes using functional dependencies

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		mtl-2.2.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Aue4leSeVkpKLsfHIV51E8

.include <bsd.port.mk>
