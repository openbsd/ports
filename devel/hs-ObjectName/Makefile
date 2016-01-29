# $OpenBSD: Makefile,v 1.4 2016/01/29 20:28:07 kili Exp $

COMMENT =		explicitly handled object names

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		ObjectName-1.1.0.0
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Etu94TwDKLQCvlkOVnv6VC

.include <bsd.port.mk>
