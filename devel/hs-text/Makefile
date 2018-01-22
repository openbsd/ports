# $OpenBSD: Makefile,v 1.24 2018/01/22 21:43:45 kili Exp $

COMMENT =		efficient packed Unicode text type

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		text-1.2.1.3
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5I6D6Lq0QEU97eY5wqs6DJ

.include <bsd.port.mk>
