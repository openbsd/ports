# $OpenBSD: Makefile,v 1.12 2016/01/29 20:28:08 kili Exp $

COMMENT =		library for splitting lists

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		split-0.2.2
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	2HX8EqgvDIgHYwxogxhVQv

.include <bsd.port.mk>
