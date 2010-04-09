# $OpenBSD: Makefile,v 1.1.1.1 2010/04/09 18:50:56 kili Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.1.0.3
CATEGORIES =		devel
HOMEPAGE =		http://www.cs.chalmers.se/~koen

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
