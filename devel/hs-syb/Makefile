# $OpenBSD: Makefile,v 1.17 2017/11/07 21:28:04 kili Exp $

COMMENT =		Scrap Your Boilerplate library for generic programming

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		syb-0.6
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	C65vWCsht6A8uLstpQIXyj

.include <bsd.port.mk>
