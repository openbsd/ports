# $OpenBSD: Makefile,v 1.22 2016/01/20 16:22:28 kili Exp $

COMMENT =		Software Transactional Memory

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		stm-2.4.4
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	0f2mEEroYos9RFjr5PSom0

.include <bsd.port.mk>
