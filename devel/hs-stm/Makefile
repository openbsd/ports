# $OpenBSD: Makefile,v 1.20 2015/09/19 08:09:55 kili Exp $

COMMENT =		Software Transactional Memory

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		stm-2.4.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	C1kFMnPqFjvDhFjgMZGUpr

.include <bsd.port.mk>
