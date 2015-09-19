# $OpenBSD: Makefile,v 1.19 2015/09/19 07:51:55 kili Exp $

COMMENT =		unit testing framework for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		HUnit-1.2.5.2
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://hunit.sourceforge.net/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BtnRLgvPKTa5fiI6MJ17K4

.include <bsd.port.mk>
