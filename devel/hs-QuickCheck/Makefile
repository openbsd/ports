# $OpenBSD: Makefile,v 1.4 2010/06/06 10:06:44 kili Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.1.0.3
PKGNAME =		hs-${DISTNAME}p2
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
