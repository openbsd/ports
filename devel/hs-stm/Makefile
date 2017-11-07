# $OpenBSD: Makefile,v 1.24 2017/11/07 21:27:17 kili Exp $

COMMENT =		Software Transactional Memory

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		stm-2.4.4.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4z2NRWnB0NIIUvSJsHW0kF

.include <bsd.port.mk>
