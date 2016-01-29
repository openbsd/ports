# $OpenBSD: Makefile,v 1.4 2016/01/29 20:28:08 kili Exp $

COMMENT =		old locale library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		old-locale-1.0.0.7
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	7h2Gx6mVPJ5Gheca8j9Mpe

.include <bsd.port.mk>
