# $OpenBSD: Makefile,v 1.5 2017/11/07 21:07:59 kili Exp $

COMMENT =		explicitly handled object names

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		ObjectName-1.1.0.1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	HHHIolNI8Pm5H3OGkgSUrO

.include <bsd.port.mk>
